#!/bin/bash

# Step 1: Install ddclient
sudo apt update
sudo apt install ddclient -y

# Step 2: Edit ddclient.conf
sudo nano /etc/ddclient.conf

# Delete all existing lines in the file and paste the following configuration
sudo bash -c "cat <<EOL > /etc/ddclient.conf
daemon=5m
timeout=10
syslog=no # log update msgs to syslog
#mail=root # mail all msgs to root
#mail-failure=root # mail failed update msgs to root
pid=/var/run/ddclient.pid # record PID in file.
ssl=yes # use ssl-support. Works with
# ssl-library

use=if, if=eth0
server=freedns.afraid.org
protocol=freedns
login=YOUR_FREEDNS_LOGIN
password=YOUR_FREEDNS_PASSWORD
your.freedns.domain
EOL"

# Step 3: Save and Exit nano

# Step 4: Restart ddclient service
sudo systemctl restart ddclient

# Step 5: Enable ddclient service on startup
sudo systemctl enable ddclient

# Step 6: Download and run WireGuard installation script
wget https://git.io/wireguard -O wireguard-install.sh && sudo bash wireguard-install.sh

echo "ddclient and WireGuard configuration completed."
