#!/bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt install apt-transport-https curl wget gnupg2 -y

sudo wget -O- https://downloads.plex.tv/plex-keys/PlexSign.key | gpg --dearmor | sudo tee /usr/share/keyrings/plex.gpg

echo deb [signed-by=/usr/share/keyrings/plex.gpg] https://downloads.plex.tv/repo/deb public main | sudo tee /etc/apt/sources.list.d/plexmediaserver.list

sudo apt update

sudo apt install plexmediaserver -y

sudo systemctl start plexmediaserver
sudo systemctl enable plexmediaserver

# WIP: Add nftables firewall rules
./plex-script-files/nftables.conf > /etc/nftables.conf
