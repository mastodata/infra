---
apiVersion: apps/v1
kind: Deployment
metadata:
  namespace: mastodata
  name: vent
spec:
  replicas: 1
  selector:
    matchLabels:
      app: vent
  template:
    metadata:
      labels:
        app: vent
    spec:
      containers:
        - name: vent
          image: ghcr.io/mastodata/vent:edge
          imagePullPolicy: Always
          env:
            - name: TASK_ADDRESS
              value: "tcp://task:5559"
            - name: API_BASE_URL
              value: {{ .Values.mastodata.vent.apiBaseUrl }}
          envFrom:
            - secretRef:
                name: mastodata-vent-env
