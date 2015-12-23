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

## Make root file 

- cd /
- sudo tar -cvpf root.tar /* --exclude=proc/* --exclude=sys/* --exclude = dev/pts/*
- sudo xz  -9  -e  root.tar.xz

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
