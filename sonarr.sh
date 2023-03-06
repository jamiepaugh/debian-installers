#!/bin/bash

# Add Mono repo
sudo apt install apt-transport-https dirmngr gnupg ca-certificates
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb https://download.mono-project.com/repo/debian stable-buster main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list

# Install MediaArea repo
wget https://mediaarea.net/repo/deb/repo-mediaarea_1.0-20_all.deb
dpkg -i repo-mediaarea_1.0-20_all.deb 

apt-get update
