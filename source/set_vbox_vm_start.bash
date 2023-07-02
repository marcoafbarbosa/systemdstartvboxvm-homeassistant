#!/bin/bash

if (($# != 1))
then
    echo "usage: set_vbox_vm_start.bash <vm name>"
fi

VMNAME=$1

echo "Adding service to start at boot the VM with name '$VMNAME'"
sudo cp -v ./vbox_vm_start@.service /etc/systemd/system
sudo systemctl enable vbox_vm_start@$VMNAME

