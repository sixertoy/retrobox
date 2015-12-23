# Jessie
- download jessie
- burn jessie on sdcard
- edit /boot/config.txt
  - dtparam=spi=on
  - dtoverlay=mz61581-overlay.dtb
- edit /boot/cmdline.txt
  - fbcon=map:10 fbcon=font:ProFont6x11
- plug sdcard + rpi
- sudo raspi-config
- expand file system
- sudo reboot
- sudo raspi-config
- edit international
- sudo reboot
- setup autologin
- sudo nano /etc/systemd/system/getty@tty1.service.d/autologin.conf
- [Service]
- ExecStart=
- ExecStart=-/sbin/agetty --autologin pi --noclear %I 38400 linux
- sudo systemctl enable getty@tty1.service
- sudo reboot
- setup wifi
- sudo nano /etc/wpa_supplicant/wpa_supplicant.conf
- network={id_str="" ssid="" psk=""}
- setup alias
- sudo nano .bashrc
- alias ds='df -h'
- remove alias l='ls -CF'
- sudo reboot
- install Git
- sudo apt-get install -y git dialog
- install fbcp
- sudo apt-get install cmake
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
- install chromium
- sudo apt-get install chromium
- install retropie
- git clone --depth=1 https://github.com/RetroPie/RetroPie-Setup.git
- cd RetroPie-Setup
- sudo chmod +x retropie_setup.sh

## Make root file 

- cd /
- sudo tar -cvpf root.tar /* --exclude=proc/* --exclude=sys/* --exclude = dev/pts/*
- sudo xz  -9  -e  root.tar

## Make boot file 

- cd /boot
- sudo tar -cvpf boot.tar
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
