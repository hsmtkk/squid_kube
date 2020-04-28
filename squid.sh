#!/bin/bash
docker run --rm -it --volume /home/ec2-user/squid_kube/squid.conf:/usr/local/etc/squid.conf:ro hsmtkk/squid:4.11

