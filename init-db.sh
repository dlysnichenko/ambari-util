#!/bin/sh

rm -rf /var/lib/pgsql/data
sudo -u postgres initdb /var/lib/pgsql/data
sleep 5
service postgresql restart
psql -U postgres < $AMBARI_DIR/ambari-server/src/main/resources/Ambari-DDL-Postgres-CREATE.sql