#!/bin/bash
#https://docs.digitalocean.com/developer-center/install-ubuntu-desktop-on-a-droplet/

sudo apt-get update
sudo apt-get install xrdp
sudo systemctl enable xrdp

sudo ufw allow 3389/tcp

sudo apt-get install ubuntu-desktop

adduser desktop_user

reboot



