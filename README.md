# Server Project

[![License](https://img.shields.io/badge/license-GNUv3-blue.svg)](LICENSE)
[![GitHub Stars](https://img.shields.io/github/stars/zachvlat/server.svg)](https://github.com/zachvlat/server/stargazers)
[![GitHub Forks](https://img.shields.io/github/forks/zachvlat/server.svg)](https://github.com/zachvlat/server/network)
[![GitHub Issues](https://img.shields.io/github/issues/zachvlat/server.svg)](https://github.com/zachvlat/server/issues)

This project is aimed at creating a comprehensive server setup for various purposes, such as hosting Nextcloud, Home Assistant, Jellyfin, Transmission, Deemix, FileBrowser, and more using Docker containers and Nginx Proxy Manager.

# DISCLAIMER!
All the ports I 'm using on the yml files are according to MY needs. You have to check for yourself with docker ps to see what ports can or cannot use. The same goes with the volume paths I chose etc... Check it, before you wreck it!
Also check out the volume paths for your needs. For example, about pigallery2 this path `pigallery2_photos`:/app/data/photos will fetch the photos on this folder. You might want to switch to an other folder.

## Table of Contents
- [Server Project](#server-project)
- [DISCLAIMER!](#disclaimer)
  - [Table of Contents](#table-of-contents)
  - [Getting Started](#getting-started)
    - [Prerequisites](#prerequisites)
    - [Installation](#installation)
  - [Services](#services)

## Getting Started

To get started with this project, you can follow the provided Docker Compose configuration in the [docker-compose.yml](docker-compose.yml) file. It will set up and manage the services using Docker containers. Please ensure you have the necessary prerequisites.

### Prerequisites

Before you start, make sure you have the following prerequisites installed on your system:

- Docker
- Docker Compose

### Installation

1. Clone this repository:

   ```bash
   git clone https://github.com/zachvlat/server.git
   cd server
   ```

2. ```bash
   sudo chmod +x ./docker.sh
   ./docker.sh
   sudo usermod -aG docker $USER
   sudo reboot
   ```

3. ```bash
   cd server
   docker compose up -d
   ```

## Services

1. [Nextcloud](https://nextcloud.com)
2. [Home Assistant](https://www.home-assistant.io)
3. [Jellyfin](https://jellyfin.org)
4. [Transmission](https://transmissionbt.com)
5. [Deemix](https://deemix.app)
6. [Navidrome](https://www.navidrome.org)
7. [Portainer](https://www.portainer.io)
8. [Audiobookshelf](https://github.com/Synthetica9/Audiobookshelf)
9. [Vaultwarden](https://github.com/dani-garcia/vaultwarden)
10. [PiGallery2](https://bpatrik.github.io/pigallery2)
11. [NGINX Proxy Manager](https://nginxproxymanager.com)
12. [Gitea](https://about.gitea.com/)
