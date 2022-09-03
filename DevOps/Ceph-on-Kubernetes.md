
```bash
git clone --single-branch --branch release-1.9 https://github.com/rook/rook.git

cd rook/deploy/examples/


kubectl create -f common.yaml
kubectl create -f operator.yaml
kubectl get pod -n rook-ceph -w
```
 
```bash 
kubectl apply -f crds.yaml
```


Wait for pods initializations

```bash
kubectl apply -f cluster.yaml
```

```bash
kubectl apply -f ./csi/rbd/storageclass.yaml
```
