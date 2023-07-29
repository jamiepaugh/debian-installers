#!/bin/bash

apt update
apt install gnupg2 pip curl npm -y

curl -sSL 'https://get.archivebox.io' | sh