#!/bin/bash

sudo apt update -y

#Install from the Docker repo
apt-cache policy docker-ce

#Install Docker
sudo apt install docker-ce -y

#Check the status
sudo systemctl status docker 