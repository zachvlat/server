#!/bin/bash

# Check if the user is online
if ! ping -q -c 1 -W 1 github.com > /dev/null 2>&1; then
  echo "You are offline. Please connect to the internet and run this script again."
  exit 1
fi

echo "Installing proper dependencies and repos..."

sudo apt update
sudo apt -y install apt-transport-https ca-certificates curl gnupg software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update

echo "Installing Docker and Docker Compose..."

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose

sudo usermod -aG docker $USER

echo "Docker and Docker Compose have been installed. Please reboot for the changes to take effect."
