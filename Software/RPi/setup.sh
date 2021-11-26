#!/bin/bash



sudo apt update
sudo apt upgrade -y
sudo apt dist-upgrade


curl -sSL https://get.docker.com | sh


sudo usermod -aG docker ${USER}


sudo apt install libffi-dev libssl-dev -y
sudo apt install python3-dev -y
sudo apt install python3 python3-pip -y

sudo apt autoremove

sudo pip3 install docker-compose

sudo systemctl enable docker.service
sudo systemctl enable containerd.service

