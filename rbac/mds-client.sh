kubectl delete secret mds-client 
kubectl create secret generic mds-client \
  --from-file=bearer.txt=kafka-client.txt \
  --namespace qyang
