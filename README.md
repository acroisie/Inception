# Inception

Here is the inception project.

The goal of this project is to dockerize required stack to deploy a wordpress connected with nginx and a persistent database.

The rules:

* Don't use dockerhub
* Build your own images for each services from Alpine or Debian Buster
* Use Dockerfile to build those images
* Use a Docker-compose to manage the creation of images
* Make database persistent in case of restart service
* Create a self-signed certificate
* Create a network to make communication beetwen containers
* Set the correct ports for communication
* Trigger the deployment with a simple "make"


You want to play with it? Start a beautifull shell and type > make and then connect https://acroisie.42.fr via port 443 (add :443)
You also have to accept the risk to connect because it's a self signed certificate ;)
