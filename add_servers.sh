#!/bin/bash

PORT=${1:-8080}

for name in $SERVERS
do
    echo "    server ${name} ${name}:${PORT} maxconn 32 check" \
      >> /usr/local/etc/haproxy/haproxy.cfg
done

exec /docker-entrypoint.sh $@

exit 0

