#!/bin/bash

# Check if the user is online
if ! ping -q -c 1 -W 1 github.com > /dev/null 2>&1; then
  echo "You are offline. Please connect to the internet and run this script again."
  exit 1
fi

echo "Installing necessary dependencies..."

sudo apt update
sudo apt -y install ca-certificates curl gnupg

# Add Docker’s official GPG key
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo tee /etc/apt/keyrings/docker.asc > /dev/null
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add Docker repository
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update

echo "Installing Docker and Docker Compose..."

sudo apt -y install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Add user to Docker group to run Docker without sudo
sudo usermod -aG docker $USER

echo "Docker and Docker Compose have been installed. Please reboot for the changes to take effect."
