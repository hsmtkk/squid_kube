#!/bin/sh
while true
do
  curl --proxy squid:8000 --silent http://www.example.org
  sleep 60
done

