# Jessie

# Jessie

> **install fbcp**

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

> **install retropie**

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
  - lr-genesis-plus-gx (Sega MS + MD)
  - lr-nestopia (NES)
  - ppsspp (PSP)
  - lf-fba-next (Final Burn - Arcade)
- sudo reboot
- rpies
- install themes
  - clean-look
- install samba shares

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

## Config boot

- edit recovery.cmdline
- add silentinstall
- in os/ replace root.tar.xz
- in os/ replace boot.tar.xz
- edit os.json
- edit raspbian.png
- edit slides/*


# Wheezy

## Languages
- sudo raspi-config
- change locale
- change timezone
- sudo reboot

## LCD Display

### Display
- sudo raspi-config
- active spi
- sudo reboot
- sudo nano /boot/config.txt
- dtparam=spi=on
- dtoverlay=mz61581-overlay.dtb

### Console on LCD
- 
#### With EmulationStation
- con2fbmap 1 1 # HDMI -> LCD
- con2fbmap 1 0 # LCD -> HDMI

## Install FBCP
- sudo apt-get install cmake
- git clone https://github.com/tasanakorn/rpi-fbcp
- cd rpi-fbcp/
- mkdir build
- cd build/
- cmake ..
- make
- sudo mkdir /usr/local/bin
- sudo install fbcp /usr/local/bin/fbcp

## Retropie

### Install

### Max Overclock PI2
- arm_freq=1000
- core_freq=500
- sdram_freq=500
- over_voltage=2
