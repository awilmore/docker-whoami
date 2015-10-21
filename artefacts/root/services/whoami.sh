#!/bin/bash

set -e

INDEX_PAGE="/root/www/index.html"
BUILD_TXT="/root/www/build.txt"

echo "Generating index.html..."

VERSION=`cat $BUILD_TXT`
HOSTNAME=`hostname`
IP_ADDR=`ip addr | grep 'scope global eth0' | awk '{print $2}' | cut -f1 -d'/'`

echo "<pre>"                 > $INDEX_PAGE
echo "version  : $VERSION"  >> $INDEX_PAGE
echo "hostname : $HOSTNAME" >> $INDEX_PAGE
echo "ip       : $IP_ADDR"  >> $INDEX_PAGE
echo "</pre>"               >> $INDEX_PAGE

echo "Starting python -m SimpleHTTPServer"

cd /root/www
python -m SimpleHTTPServer
