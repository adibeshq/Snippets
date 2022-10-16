# 1. install nginx-ingress

# 2. install cert manager
> https://cert-manager.io/docs/installation/helm/




# 3. create certificat issuer
```yaml
apiVersion: cert-manager.io/v1
kind: ClusterIssuer
metadata:
  name: letsencrypt-prod
  namespace: cert-manager
spec:
  acme:
    # The ACME server URL
    server: https://acme-v02.api.letsencrypt.org/directory
    # Email address used for ACME registration
    email: your_email_address_here
    # Name of a secret used to store the ACME account private key
    privateKeySecretRef:
      name: letsencrypt-prod
    # Enable the HTTP-01 challenge provider
    solvers:
    - http01:
        ingress:
          class: nginx
```

> notice: the `acme-v02.api.letsencrypt.org
` domain may not available in iran VPSs and need to route through a VPN


# 3. patch ingress.yaml

patch the file with something like this

```yaml
metadata:
    annotations:
        cert-manager.io/cluster-issuer: letsencrypt-prod
        kubernetes.io/ingress.class: nginx
spec:
  tls:
    - hosts:
        - subdomain.domain.com
      secretName: secret-name
```

> notice: a secret with `secret-name` key will be generated automatically