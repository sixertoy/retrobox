# III - Custom OS Retrobox

> **Eject SDCard & plug it on your RPi**<br>
> Needs a keyboard to be plugged in rpi<br>
> Or a RJ45 plugged with an SSH connection<br>
> **At first startup RPi is setted in Qwerty mode**<br>
> **Use pi/raspbery for user login/password (pi/rqspberry)**

## 1. Configure system

```bash
sudo raspi-config (sudo rqspi°config)
expand file system
perform reboot
sudo raspi-config
setup international language
setup timezone
setup keyboard
sudo reboot
```

## 2. Setup WIFI

> Edit /etc/wpa_supplicant/wpa_supplicant.conf<br>
> Add your network

```bash
sudo nano /etc/wpa_supplicant/wpa_supplicant.conf
network={id_str="" ssid="" psk=""}
sudo reboot
```

## 3. Autologin to you RPi

> You can now connect with SSH via wifi<br>
> Install autologin script

```bash
wget https://raw.githubusercontent.com/sixertoy/retrobox/master/files/autologin.conf
mv autologin.conf /etc/systemd/system/getty@tty1.service.d/
sudo systemctl enable getty@tty1.service
sudo reboot
```

> **Or you can create and edit autologin script**

```bash
sudo nano /etc/systemd/system/getty@tty1.service.d/autologin.conf
[Service]
ExecStart=
ExecStart=-/sbin/agetty --autologin pi --noclear %I 38400 linux
sudo systemctl enable getty@tty1.service
sudo reboot
```

## 4. Add Custom aliases

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

> **install Git**

- sudo apt-get install -y git dialog

> **install cmake**

- sudo apt-get install -y cmake

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

> **install chromium [Optional]**

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

## Config boot


- in os/ replace root.tar.xz
- in os/ replace boot.tar.xz
