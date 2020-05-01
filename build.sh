#!/bin/sh
for n in squid urlfilter virusscan pinger
do
  docker build --no-cache --tag hsmtkk/squid_kube:$n --file $n/Dockerfile .
done

