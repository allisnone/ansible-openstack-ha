#!/usr/bin/env bash

sed -i '/seqno/ s/-1/1/g' /data2/mysql_data/grastate.dat
/usr/bin/galera_new_cluster
