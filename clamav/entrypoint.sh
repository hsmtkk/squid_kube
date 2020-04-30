#!/bin/sh
mkdir -p /usr/local/clamav/var/log
tail -F /usr/local/clamav/var/log/clamd.log &
/usr/local/clamav/bin/freshclam
/usr/local/clamav/sbin/clamd --foreground --config-file=/usr/local/clamav/etc/clamd.conf

