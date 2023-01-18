kubectl delete secret rest-users 
kubectl create secret generic rest-users \
  --from-file=bearer.txt=kafka-client.txt \
  --from-file=basic.txt=kafka-client.txt \
  --namespace qyang
