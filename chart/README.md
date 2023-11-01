# Mastodata Chart
Chart for deploying dependencies

## Installation
```shell
# install cert-manager CRDs
kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.13.0/cert-manager.crds.yaml

helm secrets upgrade mastodata ./chart --install \
  --namespace mastodata --create-namespace \
  -f ./chart/secrets/mastodata/secrets.yaml \
  -f ./chart/secrets/keycloak/secrets.yaml \
  -f ./chart/secrets/cert-manager/secrets.yaml
```

## Uninstallation
