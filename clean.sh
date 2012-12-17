rm /var/log/ambari/ambari*
rm /var/log/ambari-agent/ambari*

DIR=`pwd`
cd /root/ambari-util/
if [ $# -eq 0 ]
then
  /root/ambari-util/init-db.sh
fi
cd $DIR

#/etc/init.d/postgresql-9.1 stop
#rm /var/lib/pgsql -rf
#cp /root/bak-pgsl/pgsql /var/lib/ -rf
#chown postgres:postgres -R /var/lib/pgsql
#/etc/init.d/postgresql-9.1 start

exit 0
