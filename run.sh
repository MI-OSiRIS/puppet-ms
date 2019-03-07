#!/bin/bash

HOSTNAME=`hostname`

sudo /etc/init.d/mongodb start
sudo /etc/init.d/redis-server start

echo "UNIS IP : `hostname --ip-address`"
periscoped --port 8889 -d DEBUG -c /etc/periscope/ms.cfg
