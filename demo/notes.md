RANCHER DEMO NOTES
==================



DOCKER SIMPLE RUN COMMAND
-------------------------

docker run -d -p 8001:8000 whoami:0.0.1
docker run -d -p 8002:8000 whoami:0.0.2



RANCHER KEY DETAILS
-------------------

NOTE - this is not real :)

API KEY NAME
rancher-demo-1

USERNAME (ACCESS KEY)
7B8F7F9073B4AEFFE877

PASSWORD (SECRET KEY)
zZdDke13UnpDbK4f3Jm35vaBSx4DZVssBPm1nJ9Z



NEW SERVICE COMMAND
-------------------

rancher-compose \
  --project-name "whoami-demo" \
  up -d


CURL CHECK
----------

curl http://rancher-demo.copper.sh:8001



UPGRADE COMMAND
---------------
rancher-compose \
  --project-name "whoami-demo" \
  upgrade who-srv-1 who-srv-2



DELETE COMMAND
--------------
rancher-compose \
  --project-name "whoami-demo" \
  rm who-srv-1


