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

1.  [Nextcloud](https://nextcloud.com) [https://nextcloud:443](https://nextcloud:443)
2.  [Home Assistant](https://www.home-assistant.io) [http://home-assistant:8123](http://home-assistant:8123)
3.  [Jellyfin](https://jellyfin.org) [http://jellyfin:8096](http://jellyfin:8096)
4.  [Transmission](https://transmissionbt.com) [http://transmission:9091](http://transmission:9091)
5.  [Deemix](https://deemix.app) [http://deemix:6595](http://deemix:6595)
6.  [Navidrome](https://www.navidrome.org) [http://navidrome:4533](http://navidrome:4533)
7.  [Portainer](https://www.portainer.io) [http://portainer:9000](http://portainer:9000)
8.  [Audiobookshelf](https://github.com/Synthetica9/Audiobookshelf) [http://audiobookshelf:80](http://audiobookshelf:80)
9.  [Vaultwarden](https://github.com/dani-garcia/vaultwarden) [http://vaultwarden:80](http://vaultwarden:80)
10. [PiGallery2](https://bpatrik.github.io/pigallery2) [http://pigallery2:80](http://pigallery2:80)
11. [NGINX Proxy Manager](https://nginxproxymanager.com) [http://nginxproxymanager:81](http://nginxproxymanager:81)
12. [Gitea](https://about.gitea.com/) [http://gitea:3000](http://gitea:3000)
13. [FileBrowser](https://filebrowser.org) [http://filebrowser:8080](http://filebrowser:8080)
14. [Pinepods](https://www.pinepods.online) [http://pinepods:8040](http://pinepods:8040)
15. [JDownloader](https://jdownloader.org/) [http://jdownloader-2:5800](http://jdownloader-2:5800)
