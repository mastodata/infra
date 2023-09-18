# Mastodata Chart
Chart for deploying dependencies

```shell
helm upgrade --install ingress-nginx ingress-nginx \
  --repo https://kubernetes.github.io/ingress-nginx \
  --namespace ingress-nginx --create-namespace

helm secrets upgrade mastodata ./chart --install \
  -n mastodata --create-namespace \
  -f ./chart/secrets/mastodata/secrets.yaml
```
