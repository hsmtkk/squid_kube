#!/bin/sh
docker build --no-cache --tag hsmtkk/sqid_kube:squid --file squid/Dockerfile .
docker build --no-cache --tag hsmtkk/sqid_kube:c-icap --file c-icap/Dockerfile .
docker build --no-cache --tag hsmtkk/sqid_kube:clamav --file clamav/Dockerfile .

