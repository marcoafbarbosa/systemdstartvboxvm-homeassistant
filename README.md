# Usage

Get list of VM's:

```
VBoxManage list vms
```

example output:

```
$ VBoxManage list vms
"hass" {1327a638-2308-4f4c-b0da-0225945a3612}
"hass_recover" {de854ff3-153f-4da9-97a8-2b9071e368f8}
```

Add `systemd` service with VM name:

```
sudo ./set_hass.bash hass
```

example output:

```
$ sudo ./set_hass.bash hass
Adding service to start Home Assistant at boot
'./hass@.service' -> '/etc/systemd/system/hass@.service'
Created symlink /etc/systemd/system/multi-user.target.wants/hass@hass.service → /etc/systemd/system/hass@.service.
```

Reboot and check that VM is running:

```
$ VBoxManage list runningvms
```

## Original repo: systemdstartvboxvm
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)  

Supporting files for the blog article about starting a VirtualBox VM on boot with Systemd. Refer to [this blog article](https://www.pragmaticlinux.com/2020/10/start-a-virtualbox-vm-on-boot-with-systemd/) on the PragmaticLinux blog for detailed instructions on how to use the files in this repository.
