RANCHER DEMO NOTES
==================



DOCKER SIMPLE RUN COMMAND
-------------------------

docker run -d -p 8001:8000 whoami:0.0.1
docker run -d -p 8002:8000 whoami:0.0.2



RANCHER KEY DETAILS
-------------------

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

curl http://52.64.10.140:8001



UPGRADE COMMAND
---------------
rancher-compose \
  --project-name "whoami-demo" \
  upgrade whoami-service-1 whoami-service-2
