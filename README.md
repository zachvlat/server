# Server Project

[![License](https://img.shields.io/badge/license-GNUv3-blue.svg)](LICENSE)
[![GitHub Stars](https://img.shields.io/github/stars/zachvlat/server.svg)](https://github.com/zachvlat/server/stargazers)
[![GitHub Forks](https://img.shields.io/github/forks/zachvlat/server.svg)](https://github.com/zachvlat/server/network)
[![GitHub Issues](https://img.shields.io/github/issues/zachvlat/server.svg)](https://github.com/zachvlat/server/issues)

This project is aimed at creating a comprehensive server setup for various purposes, such as hosting Nextcloud, Home Assistant, Jellyfin, Transmission, Deemix, FileBrowser, and more using Docker containers and Nginx Proxy Manager.

## Table of Contents
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Services](#services)
- [License](#license)

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

2. ```bash
   sudo chmod +x ./docker.sh
   ./docker.sh
   sudo usermod -aG docker $USER

3. ```bash
   docker-compose up -d

## Services

Nextcloud

    Image: Nextcloud Official
    Description: Nextcloud is a self-hosted file sharing and collaboration platform.

Home Assistant

    Image: LinuxServer Home Assistant
    Description: Home Assistant is an open-source home automation platform.

Jellyfin

    Image: LinuxServer Jellyfin
    Description: Jellyfin is a personal media server software.

Transmission

    Image: LinuxServer Transmission
    Description: Transmission is a lightweight BitTorrent client.

Deemix

    Image: Deemix Docker
    Description: Deemix is a music streaming downloader.

FileBrowser

    Image: FileBrowser
    Description: FileBrowser is a web-based file manager.

Portainer

    Image: Portainer CE
    Description: Portainer is a Docker container management tool.
