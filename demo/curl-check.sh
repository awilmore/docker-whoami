#!/bin/bash

if [ $# != 1 ]; then
  echo "usage: $0 loop_count"
  exit 1
fi

LOOP=$1

for i in $(seq 1 $LOOP); do
  clear
  curl http://rancher-demo.copper.sh:8001/
  curl http://rancher-demo.copper.sh:8001/
  curl http://rancher-demo.copper.sh:8001/
  curl http://rancher-demo.copper.sh:8001/
  curl http://rancher-demo.copper.sh:8001/
  sleep 1
done
