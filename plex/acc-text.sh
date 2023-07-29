#!/bin/bash

apt update
apt install build-essential git docker docker-compose

git clone https://github.com/accelerated-text/accelerated-text-project-template
cd accelerated-text-project-template/
make
make run

