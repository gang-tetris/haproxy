#!/bin/bash

sed "s/BACKEND/${BACKEND}/g" -i /usr/local/etc/haproxy/haproxy.cfg
sed "s/EXPOSE_PORT/${EXPOSE_PORT}/g" -i /usr/local/etc/haproxy/haproxy.cfg
for name in $SERVERS
do
    echo "    server ${name} ${name}:${PORT} maxconn 32 check" \
      >> /usr/local/etc/haproxy/haproxy.cfg
done

exec /docker-entrypoint.sh $@

exit 0

