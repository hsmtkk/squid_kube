#!/bin/sh
tail -F /usr/local/clamav/var/log/clamd.log &
clamd --foreground --config-file=/usr/local/clamav/etc/clamd.conf

