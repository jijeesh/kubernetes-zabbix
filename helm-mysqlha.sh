helm install --namespace zabbix --name zabbix-db incubator/mysqlha --set persistence.storageClass=rook-ceph-block --set mysqlUser=zabbix --set mysqlPassword=zabbix123 --set mysqlDatabase=zabbixtest
