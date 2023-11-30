#!/bin/bash

#move to folder
cd /home/desktop_user
sudo mkdir FAS/

cd /home/desktop_user/FAS
sudo chmod -R 777 cd /home/desktop_user/FAS

#install depedency
sudo apt-get update
sudo apt-get upgrade

#snap
sudo apt-get install snapd

#gedit
sudo apt-get install gedit

#github
sudo snap install git
git --version
sudo snap install github-desktop

#docker
#remove old version
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done

#docker desktop
wget https://desktop.docker.com/linux/main/amd64/docker-desktop-4.25.2-amd64.deb?utm_source=docker&utm_medium=webreferral&utm_campaign=docs-driven-download-linux-amd64
sudo chmod -R 777 docker-desktop-4.25.2-amd64.deb
sudo apt install docker-desktop-4.25.2-amd64.deb

#docker cli
#Set up Docker's apt repository.
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

#Install the Docker packages.
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

#verify
docker --version


#PYTHON
sudo apt install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update
sudo apt install python3.9

#install pip
curl -sS https://bootstrap.pypa.io/get-pip.py | sudo python3.9 -m pip install --upgrade pip

#verify
python3.9 --version
pip3.9 --version

#link python3.9 to python
sudo ln -s "$(which python3.9)" /usr/bin/python
ls -l /usr/bin/python
python --version





#VSCode
sudo apt-get install wget gpg zip unzip
#Find in here https://code.visualstudio.com/docs/setup/linux
#sudo apt install <file>.deb
#install python extension for debug, breakpoint and run

#download suave
#https://github.com/kas-lab/suave#install-suave-locally
# Build the first Dockerfile
#docker build -t kasm-jammy:dev -f docker/dockerfile-kasm-core-jammy .

# Build the second Dockerfile, using the image built from the first #Dockerfile as the base image
#docker build -t suave:dev --build-arg BASE_IMAGE=kasm-jammy:dev -f #docker/dockerfile-suave .

#download UPISAS depedency
#https://github.com/S2-group/UPISAS/tree/students
#pip3 install requests
#pip3 install docker
#pip3 install jsonschema
#pip3 install rich



