# Server Project

[![License](https://img.shields.io/badge/license-GNUv3-blue.svg)](LICENSE)
[![GitHub Stars](https://img.shields.io/github/stars/zachvlat/server.svg)](https://github.com/zachvlat/server/stargazers)
[![GitHub Forks](https://img.shields.io/github/forks/zachvlat/server.svg)](https://github.com/zachvlat/server/network)
[![GitHub Issues](https://img.shields.io/github/issues/zachvlat/server.svg)](https://github.com/zachvlat/server/issues)

This project is aimed at creating a comprehensive server setup for various purposes, such as hosting Nextcloud, Jellyfin, Transmission, FileBrowser, and more using Docker containers and Nginx Proxy Manager.

## Table of Contents
- [Server Project](#server-project)
- [DISCLAIMER!](#disclaimer)
  - [Table of Contents](#table-of-contents)
  - [Getting Started](#getting-started)
    - [Prerequisites](#prerequisites)
    - [Installation](#installation)
  - [Services](#services)


# DISCLAIMER!
All the ports I 'm using on the yml files are according to MY needs. You have to check for yourself with docker ps to see what ports can or cannot use. The same goes with the volume paths I chose etc... Check it, before you wreck it!
Also check out the volume paths for your needs. For example, about pigallery2 this path `${PHOTOS_PATH}`:/app/data/photos will fetch the photos on this folder. You might want to switch to an other folder.

## Getting Started

To get started with this project, you can follow the provided Docker Compose configuration in the [docker compose yml](compose.yml) file. It will set up and manage the services using Docker containers. Please ensure you have the necessary prerequisites.

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

2. Copy `.env-example` to `.env` and edit it according to your paths.

3. ```bash
   chmod +x ./docker.sh
   ./docker.sh
   sudo reboot
   ```
   
4. ```bash
   cd server
   docker compose up -d
   ```

## Services

1.  [Nextcloud](https://nextcloud.com) [http://localhost:8080](http://localhost:8080)
2.  [Baikal](https://sabre.io/baikal) [http://localhost:5232](http://localhost:5232)
3.  [Jellyfin](https://jellyfin.org) [http://localhost:8096](http://localhost:8096)
4.  [Transmission](https://transmissionbt.com) [http://localhost:9091](http://localhost:9091)
5.  [Deemix](https://deemix.app) [http://localhost:6595](http://localhost:6595)
6.  [Navidrome](https://www.navidrome.org) [http://localhost:4533](http://localhost:4533)
7.  [Portainer](https://www.portainer.io) [http://localhost:9000](http://localhost:9000)
8.  [Audiobookshelf](https://github.com/advplyr/audiobookshelf) [http://localhost:13378](http://localhost:13378)
9.  [Vaultwarden](https://github.com/dani-garcia/vaultwarden) [http://localhost:9445](http://localhost:9445)
10. [PiGallery2](https://bpatrik.github.io/pigallery2) [http://localhost:8082](http://localhost:8082)
11. [NGINX Proxy Manager](https://nginxproxymanager.com) [http://localhost:81](http://localhost:81)
12. [Gitea](https://about.gitea.com/) [http://localhost:3000](http://localhost:3000)
13. [FileBrowser](https://filebrowser.org) [http://localhost:8181](http://localhost:8181)
14. [Pinepods](https://www.pinepods.online) [http://localhost:8040](http://localhost:8040)
15. [JDownloader](https://jdownloader.org/) [http://localhost:5800](http://localhost:5800)
16. [Owncast](https://owncast.online/) [http://localhost:8083](http://localhost:8083)
