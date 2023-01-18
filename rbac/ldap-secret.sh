kubectl delete secret ldap-users 
kubectl create secret generic ldap-users \
  --from-file=basic.txt=c3-users.txt \
  --from-file=ldap.txt=ldap.txt \
  --namespace qyang
