AGENT_HOST="`hostname`"
curl -i -X POST -d '{"Clusters": {"version" : "HDP-1.2.0"}}' http://localhost:8080/api/v1/clusters/c1
curl -i -X POST http://localhost:8080/api/v1/clusters/c1/services/HDFS
curl -i -X POST http://localhost:8080/api/v1/clusters/c1/services/MAPREDUCE
curl -i -X POST http://localhost:8080/api/v1/clusters/c1/services/ZOOKEEPER
curl -i -X POST http://localhost:8080/api/v1/clusters/c1/services/HBASE
curl -i -X POST http://localhost:8080/api/v1/clusters/c1/services/GANGLIA
curl -i -X POST http://localhost:8080/api/v1/clusters/c1/services/NAGIOS
#curl -i -X POST http://localhost:8080/api/v1/clusters/c1/services/OOZIE
#curl -i -X POST http://localhost:8080/api/v1/clusters/c1/services/HIVE
curl -i -X POST -d '{"type": "core-site", "tag": "version1", "properties" : { "fs.default.name" : "localhost:8020"}}' http://localhost:8080/api/v1/clusters/c1/configurations
curl -i -X POST -d '{"type": "hdfs-site", "tag": "version1", "properties" : { "dfs.datanode.data.dir.perm" : "750"}}' http://localhost:8080/api/v1/clusters/c1/configurations
curl -i -X POST -d '{"type": "global", "tag": "version1", "properties" : { "hbase_hdfs_root_dir" : "/apps/hbase/"}}' http://localhost:8080/api/v1/clusters/c1/configurations
curl -i -X POST -d '{"type": "mapred-site", "tag": "version1", "properties" : { "mapred.job.tracker" : "localhost:50300", "mapreduce.history.server.embedded": "false", "mapreduce.history.server.http.address": "localhost:51111"}}' http://localhost:8080/api/v1/clusters/c1/configurations
curl -i -X POST -d '{"type": "hbase-site", "tag": "version1", "properties" : { "hbase.rootdir" : "hdfs://localhost:8020/apps/hbase/", "hbase.cluster.distributed" : "true", "hbase.zookeeper.quorum": "localhost", "zookeeper.session.timeout": "60000" }}' http://localhost:8080/api/v1/clusters/c1/configurations
curl -i -X POST -d '{"type": "hbase-env", "tag": "version1", "properties" : { "hbase_hdfs_root_dir" : "/apps/hbase/"}}' http://localhost:8080/api/v1/clusters/c1/configurations
curl -i -X POST -d '{"type": "nagios-global", "tag": "version2", "properties" : { "nagios_web_login" : "nagiosadmin", "nagios_web_password" : "password", "nagios_contact": "a\u0040b.c" }}' http://localhost:8080/api/v1/clusters/c1/configurations
curl -i -X POST -d '{"type": "nagios-global", "tag": "version1", "properties" : { "nagios_web_login" : "nagiosadmin", "nagios_web_password" : "password"  }}' http://localhost:8080/api/v1/clusters/c1/configurations
curl -i -X PUT -d '{"config": {"core-site": "version1", "hdfs-site": "version1", "global" : "version1" }}'  http://localhost:8080/api/v1/clusters/c1/services/HDFS
curl -i -X PUT -d '{"config": {"core-site": "version1", "mapred-site": "version1"}}'  http://localhost:8080/api/v1/clusters/c1/services/MAPREDUCE
curl -i -X PUT -d '{"config": {"hbase-site": "version1", "hbase-env": "version1"}}'  http://localhost:8080/api/v1/clusters/c1/services/HBASE
curl -i -X PUT -d '{"config": {"nagios-global": "version2" }}'  http://localhost:8080/api/v1/clusters/c1/services/NAGIOS
#curl -i -X POST http://localhost:8080/api/v1/clusters/c1/services/HDFS/components/NAMENODE
#curl -i -X POST http://localhost:8080/api/v1/clusters/c1/services/HDFS/components/SECONDARY_NAMENODE
#curl -i -X POST http://localhost:8080/api/v1/clusters/c1/services/HDFS/components/DATANODE
#curl -i -X POST http://localhost:8080/api/v1/clusters/c1/services/HDFS/components/HDFS_CLIENT
#curl -i -X POST http://localhost:8080/api/v1/clusters/c1/services/MAPREDUCE/components/JOBTRACKER
#curl -i -X POST http://localhost:8080/api/v1/clusters/c1/services/MAPREDUCE/components/TASKTRACKER
#curl -i -X POST http://localhost:8080/api/v1/clusters/c1/services/ZOOKEEPER/components/ZOOKEEPER_SERVER
#curl -i -X POST http://localhost:8080/api/v1/clusters/c1/services/HBASE/components/HBASE_MASTER
#curl -i -X POST http://localhost:8080/api/v1/clusters/c1/services/HBASE/components/HBASE_REGIONSERVER
#curl -i -X POST http://localhost:8080/api/v1/clusters/c1/services/HBASE/components/HBASE_CLIENT
#curl -i -X POST http://localhost:8080/api/v1/clusters/c1/services/GANGLIA/components/GANGLIA_SERVER
#curl -i -X POST http://localhost:8080/api/v1/clusters/c1/services/GANGLIA/components/GANGLIA_MONITOR
curl -i -X POST http://localhost:8080/api/v1/clusters/c1/services/NAGIOS/components/NAGIOS_SERVER
#curl -i -X POST http://localhost:8080/api/v1/clusters/c1/services/HIVE/components/HIVE_SERVER
#curl -i -X POST http://localhost:8080/api/v1/clusters/c1/services/HIVE/components/MYSQL_SERVER
#curl -i -X POST http://localhost:8080/api/v1/clusters/c1/services/OOZIE/components/OOZIE_SERVER
curl -i -X POST http://localhost:8080/api/v1/clusters/c1/hosts/$AGENT_HOST
#curl -i -X POST http://localhost:8080/api/v1/clusters/c1/hosts/$AGENT_HOST/host_components/NAMENODE
#curl -i -X POST http://localhost:8080/api/v1/clusters/c1/hosts/$AGENT_HOST/host_components/SECONDARY_NAMENODE
#curl -i -X POST http://localhost:8080/api/v1/clusters/c1/hosts/$AGENT_HOST/host_components/DATANODE
#curl -i -X POST http://localhost:8080/api/v1/clusters/c1/hosts/$AGENT_HOST/host_components/JOBTRACKER
#curl -i -X POST http://localhost:8080/api/v1/clusters/c1/hosts/$AGENT_HOST/host_components/TASKTRACKER
#curl -i -X POST http://localhost:8080/api/v1/clusters/c1/hosts/$AGENT_HOST/host_components/ZOOKEEPER_SERVER
#curl -i -X POST http://localhost:8080/api/v1/clusters/c1/hosts/$AGENT_HOST/host_components/GANGLIA_SERVER
#curl -i -X POST http://localhost:8080/api/v1/clusters/c1/hosts/$AGENT_HOST/host_components/GANGLIA_MONITOR
#curl -i -X POST http://localhost:8080/api/v1/clusters/c1/hosts/$AGENT_HOST/host_components/HDFS_CLIENT
#curl -i -X POST http://localhost:8080/api/v1/clusters/c1/hosts/$AGENT_HOST/host_components/HBASE_MASTER
#curl -i -X POST http://localhost:8080/api/v1/clusters/c1/hosts/$AGENT_HOST/host_components/HBASE_REGIONSERVER
#curl -i -X POST http://localhost:8080/api/v1/clusters/c1/hosts/$AGENT_HOST/host_components/HBASE_CLIENT
curl -i -X POST http://localhost:8080/api/v1/clusters/c1/hosts/$AGENT_HOST/host_components/NAGIOS_SERVER
#curl -i -X POST http://localhost:8080/api/v1/clusters/c1/hosts/$AGENT_HOST/host_components/HIVE_SERVER
#curl -i -X POST http://localhost:8080/api/v1/clusters/c1/hosts/$AGENT_HOST/host_components/MYSQL_SERVER
#curl -i -X POST http://localhost:8080/api/v1/clusters/c1/hosts/$AGENT_HOST/host_components/OOZIE_SERVER

curl -i -X PUT  -d '{"ServiceInfo": {"state" : "INSTALLED"}}'   http://localhost:8080/api/v1/clusters/c1/services?state=INIT

#curl -i -X PUT  -d '{"ServiceInfo": {"state" : "STARTED"}}'   http://localhost:8080/api/v1/clusters/c1/services?state=INSTALLED
# http://localhost:8080/api/v1/clusters/c1/requests/2
#curl -i -X PUT    http://localhost:8080/api/v1/clusters/c1/services?state="INSTALLED"
#curl -i -X POST  -d '{"ServiceInfo": {"state" : "STARTED"}}' http://localhost:8080/api/v1/clusters/c1/services/HDFS
