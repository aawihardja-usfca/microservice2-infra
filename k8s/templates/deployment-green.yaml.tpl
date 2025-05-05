apiVersion: apps/v1
kind: Deployment
metadata:
  name: __SERVICE__-green
  labels:
    service: __SERVICE__
    version: green
spec:
  replicas: 1
  selector:
    matchLabels:
      service: __SERVICE__
      version: green
  template:
    metadata:
      labels:
        service: __SERVICE__
        version: green
    spec:
      containers:
      - name: __SERVICE__
        image: __IMAGE__
        imagePullPolicy: Always
        ports:
        - containerPort: __PORT__