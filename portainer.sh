#!/bin/bash

# Define a function to print errors in red text and exit with a non-zero status code
function error {
  echo -e "\e[91m$1\e[39m"
  exit 1
}

# Check if the user is online
if ! ping -q -c 1 -W 1 github.com > /dev/null 2>&1; then
  error "You are offline. Please connect to the internet and run this script again."
fi

# Pull the latest Portainer CE image and run it as a Docker container
sudo docker run -d -p 9000:9000 -p 9443:9443 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest --logo "https://pi-hosted.com/pi-hosted-logo.png" || error "Failed to run Portainer docker image!"
