# Mastodata Chart
Chart for deploying dependencies

```shell
helm secrets upgrade mastodata ./chart --install \
    -n mastodata --create-namespace \
    -f ./chart/secrets/mastodata/secrets.yaml
```
