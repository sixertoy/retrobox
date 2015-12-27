# README

> retrobox/files/README.md

This folder contains utilities files for an RPi OS based on Wheezy/Jessie version

## .bash_aliases

> This file contains OS utils alias/shortcuts<br>
> **Install in your home folder**

```bash
cd ~
wget https://raw.githubusercontent.com/sixertoy/retrobox/master/files/.bash_aliases
```

## .bashrc

> **Don't replace your /home/pi/.bashrc file by this file**<br>
> This file is a part of a .bashrc file<br>
> It only contains some tweaks to display more informations<br>
> At RPi Startup
> This script was extract from an offical [Retropie](https://github.com/RetroPie/RetroPie-Setup) image

## autologin.conf

> **Raspbian Jessie Version**
> This file allows an autologin TTY connection at boot
> **Install**

```bash
cd ~
wget https://raw.githubusercontent.com/sixertoy/retrobox/master/files/autologin.conf
mv autologin.conf /etc/systemd/system/getty@tty1.service.d/
sudo systemctl enable getty@tty1.service
sudo reboot
```

> for **Raspbian Wheezy Version** see [autologin for wheezy](./../tips/AUTOLOGIN_WHEEZY.md) in tips section

## fbcp

> Framebuffer Copy<br>
> Is used to clone an HDMI stream output to a LCD GPIO display output<br>
> **Install**

```bash
```

## switchd

## wp_supplicant.conf

> A WIFI basic configuration file<br>
> **Install**

```bash
cd ~~
wget 
mv wpa_supplicant.conf /etc/wpa_supplicant
# edit file
sudo nano /etc/wpa_supplicant/wpa_supplicant.conf
# define your WIFI network
# ID_STR: a user defined custom name for the WIFI connection
# SSID: name of your home network
# PSK: secret key for accessing your network defined by your internet provider
```

