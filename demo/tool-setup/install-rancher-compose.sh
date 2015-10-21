#!/bin/bash

set -e

wget -q -O /tmp/rancher-compose.tgz https://github.com/rancher/rancher-compose/releases/download/v0.4.3/rancher-compose-linux-amd64-v0.4.3.tar.gz && \
  tar -zxvf /tmp/rancher-compose.tgz -C /var/lib && \
  ln -s /var/lib/rancher-compose-*/rancher-compose /usr/local/bin/rancher-compose

rancher-compose --version
