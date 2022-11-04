# Deploy Kafka ( Confluent Platform ) using CFK and ArgoCD

## Install ArgoCD
```
kubectl -n qyang get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo
```
## Install CFK
* Create Kafka Admin Rest 
```
apiVersion: platform.confluent.io/v1beta1
kind: KafkaRestClass
metadata:
  name: default
spec:
  kafkaClusterRef:
    name: kafka
    namespace: qyang
  kafkaRest:
    endpoint: http://kafka.qyang.svc.cluster.local:8090
```
* Test with topic creation
```
---
apiVersion: platform.confluent.io/v1beta1
kind: KafkaTopic
metadata:
  name: pageviews
  namespace: qyang
spec:
  replicas: 3
  partitionCount: 1
  kafkaClusterRef:
    name: kafka
    namespace: qyang
```

## Scale Cluster
* https://docs.confluent.io/operator/current/co-scale-cluster.html#scale-cp-clusters-and-balance-data
```
kubectl annotate kafka kafka platform.confluent.io/enable-shrink="true"

```

