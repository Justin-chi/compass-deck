#!/bin/bash
until mysql -h"compass-db" -u"root" -p"root" -e 'show databases'; do
  >&2 echo "DB is unavailable - sleeping"
  sleep 1
done
>&2 echo "DB is up"

apachectl -k start
tail -f /dev/null
