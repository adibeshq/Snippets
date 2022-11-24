## Make docker container to use host interface network
```yml
volumes:
        - name: tun
          hostPath:
            path: /dev/net/tun
containers:
    securityContext: 
      capabilities:
           add:
             - NET_ADMIN
      privileged: true
    volumeMounts:
      - mountPath: /dev/net/tun  
        name: tun
```

Docker equivalent:
```bash
docker run --cap-add=NET_ADMIN --device /dev/net/tun:/dev/net/tun -i -t alpine /bin/ash
```
