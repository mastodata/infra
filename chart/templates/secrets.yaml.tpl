---
apiVersion: v1
kind: Secret
metadata:
  name: ghcr-login
  namespace: mastodata
type: kubernetes.io/dockerconfigjson
data:
  .dockerconfigjson: {{ .Values.secrets.ghcrlogin.data }}
