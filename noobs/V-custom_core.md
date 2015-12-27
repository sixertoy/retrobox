# V - Custom files OS core

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



> **install chromium [Optional]**

- sudo apt-get install chromium
