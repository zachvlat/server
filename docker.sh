#!/bin/bash

# Check if the user is online
if ! ping -q -c 1 -W 1 github.com > /dev/null 2>&1; then
  echo "You are offline. Please connect to the internet and run this script again."
  exit 1
fi

# Install Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo rm get-docker.sh

# Add the current user to the Docker group
sudo usermod -aG docker $USER

# Install Docker Compose
sudo curl -fsSL https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

echo "Docker and Docker Compose have been installed. Please log out and log back in for the changes to take effect."
