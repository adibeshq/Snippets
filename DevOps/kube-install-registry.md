
## config registry as dockerhub proxy
add 
```yaml
proxy:
  remoteurl: https://registry-1.docker.io
```
into `config.yml` file inside `docker-registry-config `config map in kubernetes 

or into `/etc/docker/config.yml` for direct config inside the registry os file system

> this also called docker pull through cache server

> if we want also push into our private docker repo we should use separate docker registry server for push tasks


<br />
<br />

## Fix `413 Request Entity Too Large` error for nginx ingress
add `'nginx.ingress.kubernetes.io/proxy-body-size: "0"'` to registry ingress anotations

add `'nginx.org/client-max-body-size: "0"'` to registry ingress anotations

