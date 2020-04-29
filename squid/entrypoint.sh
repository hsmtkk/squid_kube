#!/bin/sh
tail -F /usr/local/squid/var/logs/access.log &
/usr/local/squid/sbin/squid -f /usr/local/squid/etc/squid.conf -N

