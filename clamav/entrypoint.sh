#!/bin/sh

update-ca-certificates

groupadd clamav
useradd -g clamav clamav

mkdir /usr/local/clamav/share/clamav
chown clamav:clamav /usr/local/clamav/share/clamav

mkdir -p /usr/local/clamav/var/log
tail -F /usr/local/clamav/var/log/clamd.log &
/usr/local/clamav/bin/freshclam
/usr/local/clamav/sbin/clamd --foreground --config-file=/usr/local/clamav/etc/clamd.conf

