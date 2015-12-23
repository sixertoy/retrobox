# Jessie

## Prepare SDCard

> download jessie image<br>
> burn jessie on sdcard<br>

- edit /boot/config.txt
  - dtparam=spi=on
  - dtoverlay=mz61581-overlay.dtb
- edit /boot/cmdline.txt
  - fbcon=map:10 fbcon=font:ProFont6x11
- eject & plug sdcard + rpi

## Config system

> need a keyboard to be plugged in rpi

- sudo raspi-config (sudo rqspi°config)
- expand file system
- perform reboot
- sudo raspi-config
- edit international language
- sudo reboot
- sudo raspi-config
- setup timezone
- setup keyboard
- sudo reboot

## WIFI

> need a keyboard to be plugged in rpi

- sudo nano /etc/wpa_supplicant/wpa_supplicant.conf
- network={id_str="" ssid="" psk=""}

## Autologin

> can be done via SSH

- wget https://raw.githubusercontent.com/sixertoy/retrobox/master/files/autologin.conf
- mv autologin.conf /etc/systemd/system/getty@tty1.service.d/
- sudo systemctl enable getty@tty1.service
- sudo reboot

> or

- sudo nano /etc/systemd/system/getty@tty1.service.d/autologin.conf
- [Service]
- ExecStart=
- ExecStart=-/sbin/agetty --autologin pi --noclear %I 38400 linux
- sudo systemctl enable getty@tty1.service
- sudo reboot

## Aliases

> can be done via SSH

- wget https://raw.githubusercontent.com/sixertoy/retrobox/master/files/.bash_aliases

> or

- sudo nano .bashrc
- #alias l='ls -CF'
- alias ll='ls -lA'
- alias ds='df -h'

## Welcome Tweaks

- sudo nano .bashrc
- copy file content https://raw.githubusercontent.com/sixertoy/retrobox/master/files/.bashrc

## Install Packages

> install Git
- sudo apt-get install -y git dialog

> install cmake
- sudo apt-get install -y cmake

> install fbcp
- git clone https://github.com/tasanakorn/rpi-fbcp
- cd rpi-fbcp/
- mkdir build
- cd build/
- cmake ..
- make
- sudo mkdir /usr/local/bin (may already exists)
- sudo install fbcp /usr/local/bin/fbcp
- sudo wget -O /etc/init.d/fbcp https://raw.githubusercontent.com/sixertoy/retrobox/master/files/fbcp
- sudo chmod +x /etc/init.d/fbcp
- sudo reboot

> install retropie
- git clone --depth=1 https://github.com/RetroPie/RetroPie-Setup.git
- cd RetroPie-Setup
- sudo chmod +x retropie_setup.
- sudo sh ./retropie_setup.sh
- install emulators (binary)
  - emulationstation
  - retroarch
  - mupen64plus (N64)
  - lr-pcsx-rearmed (PSX)
  - reicast (Dreamcast)
  - lr-SNES9x-Next (SNES)
  - lr-mgba (GBA)
- sudo reboot
- rpies
- install themes
  - clean-look
- install samba shares

> install chromium [Optional]
- sudo apt-get install chromium

# NOOBS

## Make root file 

- cd /
- sudo tar -cvpf root.tar /* --exclude=proc/* --exclude=sys/* --exclude = dev/pts/*
- sudo xz  -9  -e  root.tar

## Make boot file 

- cd /boot
- sudo tar -cvpf boot.tar /*
- sudo xz  -9  -e  boot.tar

## Get file over ssh

- scp pi@<rpi_ip_adress>:root.tar.xz ~/Downloads
- scp pi@<rpi_ip_adress>:boot.tar.xz ~/Downloads

# NOOBS

- edit recovery.cmdline
- add silentinstall
- in os/ replace root.tar.xz
- in os/ replace boot.tar.xz
- edit os.json
- edit raspbian.png
- edit slides/*
