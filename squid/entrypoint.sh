#!/bin/sh
/usr/local/squid/libexec/security_file_certgen -c -s /usr/local/squid/var/cache/squid/ssl_db -M 4MB
tail -F /usr/local/squid/var/logs/access.log &
/usr/local/squid/sbin/squid -f /usr/local/squid/etc/squid.conf -N

