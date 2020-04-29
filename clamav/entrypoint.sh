#!/bin/sh
tail -F /usr/local/clamav/var/log/clamd.log &
/usr/local/clamav/bin/freshclam
clamd --foreground --config-file=/usr/local/clamav/etc/clamd.conf

