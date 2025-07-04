#!/bin/bash

# Check if the user is online
if ! ping -q -c 1 -W 1 github.com > /dev/null 2>&1; then
  echo "You are offline. Please connect to the internet and run this script again."
  exit 1
fi

echo "Installing necessary dependencies..."

sudo apt update
sudo apt -y install ca-certificates curl gnupg lsb-release

# Add Docker’s official GPG key
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo tee /etc/apt/keyrings/docker.asc > /dev/null
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add Docker repository
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update

echo "Installing Docker and Docker Compose plugin..."

sudo apt -y install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Optionally install standalone Docker Compose binary (if needed)
DOCKER_COMPOSE_VERSION=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | grep -oP '"tag_name": "\K[^"]+')
sudo curl -L "https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-$(uname -s)-$(uname -m)" \
  -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Verify Docker Compose installation
docker-compose --version

# Add current user to the Docker group
CURRENT_USER=$(whoami)
sudo usermod -aG docker "$CURRENT_USER"

echo "Docker and Docker Compose have been installed. Please reboot or run 'newgrp docker' for group changes to take effect."