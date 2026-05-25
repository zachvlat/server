#!/bin/bash
set -e

sudo apt update
sudo apt -y install ca-certificates curl gnupg lsb-release

DISTRO_ID=$(lsb_release -is | tr '[:upper:]' '[:lower:]')
CODENAME=$(lsb_release -cs)

case "$DISTRO_ID" in
    ubuntu)
        REPO_BASE="ubuntu"
        ;;
    debian)
        REPO_BASE="debian"
        ;;
    raspbian)
        REPO_BASE="raspbian"
        ;;
    *)
        echo "Unknown distribution '$DISTRO_ID', assuming Debian-compatible."
        REPO_BASE="debian"
        ;;
esac

echo "Detected distribution: $DISTRO_ID ($CODENAME), using repository: $REPO_BASE"

sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL "https://download.docker.com/linux/${REPO_BASE}/gpg" \
    | sudo tee /etc/apt/keyrings/docker.asc > /dev/null
sudo chmod a+r /etc/apt/keyrings/docker.asc

echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] \
  https://download.docker.com/linux/${REPO_BASE} ${CODENAME} stable" \
    | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update
sudo apt -y install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

sudo usermod -aG docker "$(whoami)"

echo "Installation complete. Reboot or run 'newgrp docker' to apply group changes."
docker --version
docker compose version
