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

## autologin.conf

> **Raspbian Jessie Version**
> This file allows an autologin TTY connection at boot
> **Install**

```bash
```

## fbcp

> Framebuffer Copy<br>
> Clone an HDMI output to a LCD GPIO display<br>
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

