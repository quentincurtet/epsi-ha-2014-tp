#!/bin/bash

# This script will pré-install quickly some stuffes

# Disable Chaos Monkey (cf. https://coreos.com/docs/cluster-management/debugging/prevent-reboot-after-update/)
sudo systemctl stop update-engine-reboot-manager.service
sudo systemctl mask update-engine-reboot-manager.service

# Ensure we get the latest dockerfils git repo version
if [[ -d ~/dockerfiles ]]; then
	cd ~/dockerfiles
	git pull
	cd -
else
	git clone https://github.com/dduportal/dockerfiles
fi
