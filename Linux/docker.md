## Installation:
```
sudo pacman -S docker
```

## Service:
```
sudo systemctl start docker
```

```
sudo systemctl enable docker
```
## Adding User to Docker group:
Running docker requires sudo privileges. So we need to root every time we run docker. This can be eliminated by adding the user to the docker group. To add the user to the docker group, use the usermod command.

```
sudo usermod -aG docker $USER
```
The user needs to log back in to see the effect.

Note: Anyone added to the docker group is root equivalent, so make sure you trust the user that you are adding to the docker group.


### Test:
```
docker run hello-world
```


You also need to install the `docker-compose` for easy running docker.

---
##  Docker domains to apply on firewall rules or routing
https://auth.docker.io

https://registry.docker.io

https://registry-1.docker.io

https://registry-2.docker.io

https://index.docker.io/

https://dseasb33srnrn.cloudfront.net/

https://production.cloudflare.docker.com/


## Make docker use socks proxy for pulling images

On Arch edit the following file:
```
/usr/lib/systemd/system/docker.service
```

```bash
[Service]
Environment="HTTP_PROXY=socks5://ip:port"
Environment="HTTPS_PROXY=socks5://ip:port"
```

Running the following command are necessary afterwards:

```bash
systemctl daemon-reload
systemctl restart docker
```
---

## Relocate docker files to free more space on root dir

- Stop the docker
```bash
sudo systemctl stop docker
```
- Add a file to `/etc/docker`

```bash
sudo vi /etc/docker/daemon.json
```
- Add the following lines to the file

```javascript
{
  "data-root": "/path/to/your/docker"
}
```
- Copy the files
```bash
sudo rsync -aP /var/lib/docker/ /path/to/your/docker
```

- Backup current files:
```bash
sudo mv /var/lib/docker /var/lib/docker.old
```
- Start the service:
```bash
sudo systemctl start docker
```
- Test if everything works well
- Remove the redundant files:
```bash
sudo rm -rf /var/lib/docker.old
```
