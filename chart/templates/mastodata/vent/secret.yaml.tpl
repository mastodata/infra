---
apiVersion: v1
kind: Secret

metadata:
  name: mastodata-vent-env
  namespace: mastodata

data:
{{- range $key, $value := .Values.secrets.mastodata.vent }}
  {{ $key }}: {{ $value | b64enc | quote }}
{{- end }}
