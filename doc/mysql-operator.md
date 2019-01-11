checkout mysql-operator relesed one.
we used mysql operator 0.3.0 tag apiVersion

### Create a namespace
```console
$ kubectl create ns mysql-operator
```
### Installing the Chart

```console
$ helm install  --name mysql-operator   mysql-operator/
```

## Create a  MySQL cluster

The first time you create a MySQL Cluster in a zabbix namespace (other than in the
namespace into which you installed the mysql-operator) you need to create the
`mysql-agent` ServiceAccount and RoleBinding in that namespace:

```console
$ kubectl -n zabbix create -f mysql-agent-RoleBinding.yaml
```

Now let's create a new MySQL cluster. Create a `cluster.yaml` file with the following contents:

```console
$ kubectl -n zabbix create -f zabbix-database.yaml 
```
