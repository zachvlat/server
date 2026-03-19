#!/bin/bash
set -e

# Check internet
if ! curl -s --head https://github.com/ | grep "200 OK" > /dev/null; then
  echo "You are offline. Connect to the internet and rerun."
  exit 1
fi

sudo apt update
sudo apt -y install ca-certificates curl gnupg lsb-release

sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo tee /etc/apt/keyrings/docker.asc > /dev/null
sudo chmod a+r /etc/apt/keyrings/docker.asc

echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update
sudo apt -y install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Add current user to Docker group
sudo usermod -aG docker $(whoami)

echo "Installation complete. Reboot or run 'newgrp docker' to apply group changes."
docker --version
docker compose version
