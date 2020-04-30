#!/bin/sh
for n in squid url_filter virus_scan pinger
do
  docker build --no-cache --tag hsmtkk/squid_kube:$n --file $n/Dockerfile .
done

