#!/bin/sh
tail -F /usr/local/c-icap/var/log/access.log &
tail -F /usr/local/c-icap/var/log/server.log &
tail -F /usr/local/c-icap/var/log/c-icap-access-url_check.log &
/usr/local/c-icap/bin/c-icap -N -f /usr/local/c-icap/etc/c-icap.conf

