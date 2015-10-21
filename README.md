WHOAMI
======


PURPOSE
-------

This image was built for demonstration purposes for the sydney docker meetup. This image creates containers that serve a static html page that displays "whoami" details - the containers image tag version, the IP address and the hostname. 

The `tag-and-release.sh` script is useful for generating images that correctly display running container details.



USAGE
-----

* debianbase:
  - in the `base` folder, run `docker build -t debianbase .`

* whoami:
  - in the root project folder, run `tag-and-release.sh` and supply a string to represent the tag version



