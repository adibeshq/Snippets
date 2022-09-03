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
