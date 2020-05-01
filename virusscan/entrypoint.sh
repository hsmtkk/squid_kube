#!/bin/sh

# clamd

update-ca-certificates

groupadd clamav
useradd -g clamav clamav

mkdir /usr/local/clamav/share/clamav
chown clamav:clamav /usr/local/clamav/share/clamav

mkdir -p /usr/local/clamav/var/log
tail -F /usr/local/clamav/var/log/clamd.log &
/usr/local/clamav/bin/freshclam
/usr/local/clamav/sbin/clamd --config-file=/usr/local/clamav/etc/clamd.conf

# c-icap

tail -F /usr/local/c-icap/var/log/access.log &
tail -F /usr/local/c-icap/var/log/server.log &
tail -F /usr/local/c-icap/var/log/c-icap-access-vscan.log &
/usr/local/c-icap/bin/c-icap -N -f /usr/local/c-icap/etc/c-icap.conf

