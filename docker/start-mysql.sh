#!/bin/bash

set -e

CONF=$1
DATA=$2

if [ -z "$CONF" ]; then
    echo "Usage: /bin/bash start-mysql.sh CONF-FILE DATA-DIR"
    exit 1
fi

if [ -z "$DATA" ]; then
    echo "Usage: /bin/bash start-mysql.sh CONF-FILE DATA-DIR"
    exit 1
fi

docker run -d --user ${UID}:$(id -g) \
    -v ${PWD}/mysql-myclinic.cnf:/etc/mysql/my.cnf \
    -v ${PWD}/datadir:/var/lib/mysql \
    -e MYSQL_USER=myuser \
    -e MYSQL_PASSWORD=mypass \
    -e MYSQL_DATABASE=myclinic \
    -e MYSQL_ROOT_PASSWORD=rootpass \
    --name test-db \
    -p 33306:3306 \
    mysql:5.7