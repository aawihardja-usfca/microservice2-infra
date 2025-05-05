apiVersion: v1
kind: Service
metadata:
  name: __SERVICE__-green-test
spec:
  selector:
    service: __SERVICE__
    version: green
  ports:
  - port: __PORT__
    targetPort: __PORT__