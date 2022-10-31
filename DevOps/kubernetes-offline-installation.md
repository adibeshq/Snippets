

# Offline Kubernetes installation

## Deploy your registry using a Compose file
> This needs for serving `registry.k8s.io` that not accessible in VPSs located in Iran

-- docker-compose.yaml
```yaml
version: '3'

services:
  registry:
    image: registry:2
    ports:
    - "5000:5000"
    environment:
      REGISTRY_STORAGE_FILESYSTEM_ROOTDIRECTORY: /data
    volumes:
      - ./data:/data
```

## In system with Internet

For kubernetes required images run

```bash
kubeadm config images list
```

For pulling kubernetes images run 
```bash
sudo kubeadm config images pull
```

Add this line into `/etc/hosts` of machine that has pulled `registry.k8s.io` kubernetes images
```ini
# SERVER_IP DOMAIN
111.111.111.111 registry.k8s.io
```

push images to `registry.k8s.io` overrided with your own server

you need add `registry.k8s.io` to `/etc/docker/daemon.json` for server and machine that has pulled `registry.k8s.io` kubernetes images 
```json
{
  "insecure-registries": ["registry.k8s.io" ]
}
```

Add this line into `/etc/hosts` of server
```ini
# SERVER_IP DOMAIN
127.0.0.1 registry.k8s.io
```

