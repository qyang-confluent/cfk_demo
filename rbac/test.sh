kubectl exec ldap-0 -- ldapsearch -LLL -x -H ldap://ldap.qyang.svc.cluster.local:389 -b 'dc=confluentdemo,dc=com' -D "cn=mds,dc=confluentdemo,dc=com" -w 'password'

