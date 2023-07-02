#!/bin/bash

if (($# != 1))
then
    echo "usage: set_hass.bash <vm name>"
    exit
fi

VMNAME=$1

echo "Adding service to start Home Assistant at boot"
sudo cp -v ./hass@.service /etc/systemd/system
sudo systemctl daemon-reload
sudo systemctl disable hass@$VMNAME
sudo systemctl enable hass@$VMNAME

