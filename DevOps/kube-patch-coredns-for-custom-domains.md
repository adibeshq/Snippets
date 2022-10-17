
inside `coredns` configMap in `kube-system` namespace

edit Corefile key and add three lines before latest brace

```json
.:53 {
    errors
    health {
       lameduck 5s
    }
    ready
    kubernetes cluster.local in-addr.arpa ip6.arpa {
       pods insecure
       fallthrough in-addr.arpa ip6.arpa
       ttl 30
    }
    prometheus :9153
    forward . /etc/resolv.conf {
       max_concurrent 1000
    }
    cache 30
    loop
    reload
    loadbalanc

    hosts /etc/coredns/logicamp.top.db logicamp.top {
          fallthrough
    }
}
```

and add `logicamp.top.db` key with value like this:
```
185.132.80.51    logicamp.top
185.132.80.51    git.logicamp.top
185.132.80.51    cd.logicamp.top
```

and then add below keys inside `spec.template.spec.volumes.configMap.items` in `coredns` deployment

```yaml
    - key: logicamp.top.db
      path: logicamp.top.db
```
