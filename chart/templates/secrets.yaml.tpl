---
apiVersion: v1
kind: Secret
metadata:
  name: ghcr-login
  namespace: mastodata
data:
{{- $ctx := .Values.secrets.imagePullSecret -}}
{{- range $key, $value := $ctx }}
  {{ $key }}: {{ $value | b64enc }}
{{- end }}
