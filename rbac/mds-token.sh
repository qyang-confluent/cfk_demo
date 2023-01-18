kubectl create secret generic mds-token \
  --from-file=mdsPublicKey.pem=mds-publickey.txt \
  --from-file=mdsTokenKeyPair.pem=mds-tokenkeypair.txt \
  --namespace qyang
