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
