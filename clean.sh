: > /var/log/ambari/ambari*
: > /var/log/ambari-agent/ambari*

DIR=`pwd`
cd /root/ambari-util/
if [ $# -eq 0 ]
then
  /root/ambari-util/init-db.sh
fi
cd $DIR

exit 0
