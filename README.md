# Deploy Kafka ( Confluent Platform ) using CFK and ArgoCD

## Install ArgoCD
```
kubectl -n qyang get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo
```
## Install CFK

