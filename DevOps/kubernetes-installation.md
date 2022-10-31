## Install kube tools
```bash
sudo pacman -S kubeadm kubectl kubelet
sudo systemctl enable kubelet --now
```

## Install cri-dockerd from binray
```bash
sudo pacman -S git wget curl
VER=$(curl -s https://api.github.com/repos/Mirantis/cri-dockerd/releases/latest|grep tag_name | cut -d '"' -f 4|sed 's/v//g')
echo $VER

wget https://github.com/Mirantis/cri-dockerd/releases/download/v${VER}/cri-dockerd-${VER}.amd64.tgz
tar xvf cri-dockerd-${VER}.amd64.tgz
sudo mv cri-dockerd/cri-dockerd /usr/local/bin/
cri-dockerd --version

wget https://raw.githubusercontent.com/Mirantis/cri-dockerd/master/packaging/systemd/cri-docker.service
wget https://raw.githubusercontent.com/Mirantis/cri-dockerd/master/packaging/systemd/cri-docker.socket
sudo mv cri-docker.socket cri-docker.service /etc/systemd/system/
sudo sed -i -e 's,/usr/bin/cri-dockerd,/usr/local/bin/cri-dockerd,' /etc/systemd/system/cri-docker.service

sudo systemctl enable cri-docker.socket --now
```


## Initialize cluster

```bash
sudo swapoff -a
sudo hostnamectl set-hostname master-node
sudo kubeadm init --pod-network-cidr=192.168.0.0/16 --cri-socket=unix:///var/run/cri-dockerd.sock --node-name=master-node
```

## Init Calico
```bash
kubectl create -f https://raw.githubusercontent.com/projectcalico/calico/v3.24.3/manifests/tigera-operator.yaml
kubectl create -f https://raw.githubusercontent.com/projectcalico/calico/v3.24.3/manifests/custom-resources.yaml
```

### Confirm Calico installation
```bash
watch kubectl get pods -n calico-system
```

## Make master node ready to accept pods
```bash
kubectl taint node master-node node.kubernetes.io/not-ready:NoSchedule-
kubectl taint node master-node node-role.kubernetes.io/control-plane:NoSchedule-
```


## Install Nginx ingress
This steps requires for assigning domains to kubernetes apps
```bash
helm repo add nginx-stable https://helm.nginx.com/stable
helm repo update
helm install nginx-ingress nginx-stable/nginx-ingress -n kube-system
```

## Install certificat manager
```bash
helm repo add jetstack https://charts.jetstack.io
helm repo update
kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.10.0/cert-manager.crds.yaml
helm install cert-manager jetstack/cert-manager --namespace kube-system  --create-namespace
```

## Install openebs Jiva volume provisioner
```bash 
helm repo add openebs https://openebs.github.io/charts
helm repo update 
helm install openebs --namespace kube-system openebs/openebs --create-namespace
kubectl apply -f https://openebs.github.io/charts/jiva-operator.yaml 
```

# Create storage class
apply below configs using kubectl

```yaml
apiVersion: openebs.io/v1alpha1
 kind: JivaVolumePolicy
 metadata:
   name: jiva-volume-policy
   namespace: openebs
 spec:
   replicaSC: openebs-hostpath
   target:
     replicationFactor: 1
     # disableMonitor: false
     # auxResources:
     # tolerations:
     # resources:
     # affinity:
     # nodeSelector:
     # priorityClassName:
   # replica:
     # tolerations:
     # resources:
     # affinity:
     # nodeSelector:
     # priorityClassName:
```

```yaml
apiVersion: storage.k8s.io/v1
kind: StorageClass
metadata:
  name: openebs-jiva
provisioner: jiva.csi.openebs.io
allowVolumeExpansion: true
parameters:
  cas-type: "jiva"
  policy: "jiva-volume-policy"
```


## Make Jiva default
```bash
kubectl patch storageclass openebs-jiva -p '{"metadata": {"annotations":{"storageclass.kubernetes.io/is-default-class":"true"}}}'
```



## Install Prometheus & Metrics
```bash
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm install prometheus prometheus-community/prometheus  -n kube-system
```
