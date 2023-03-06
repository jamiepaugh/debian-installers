#!/bin/bash

# Install dependencies
apt-get install git python3-setuptools

# Install from GitHub
cd /opt
git clone https://github.com/Tautulli/Tautulli.git
addgroup tautulli && sudo adduser --system --no-create-home tautulli --ingroup tautulli
chown -R tautulli:tautulli /opt/Tautulli

# Create systemd service
cp /opt/Tautulli/init-scripts/init.systemd /lib/systemd/system/tautulli.service
systemctl daemon-reload && sudo systemctl enable tautulli.service
systemctl start tautulli.service