#!/bin/bash

set -e

if [ $# != 1 ]; then
  echo "usage: $0 tag_version"
  exit 1
fi

TAG_NAME=$1

echo "Update build.txt..."
echo $TAG_NAME > artefacts/root/www/build.txt

echo "Building latest image..."
docker build -t awilmore/whoami:latest .

echo "Tagging image..."
docker tag -f awilmore/whoami:latest whoami:$TAG_NAME

echo "Restore build.txt..."
echo "(unversioned)" > artefacts/root/www/build.txt

echo "Done."
