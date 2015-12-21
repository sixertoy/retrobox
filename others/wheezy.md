

## Preinstall
- copy wheezy image on sdcard
- sudo raspi-config
- extend FS
- reboot

## Update Firmware
- sudo apt-get update
- sudo apt-get upgrade
- reboot
- sudo rpi-update
- reboot

## Languages
- sudo raspi-config
- change locale
- change timezone
- sudo reboot

## Autologin et WIFI

### Autologin
- sudo nano /etc/inittab
- #1:2345:respawn:/sbin/getty --noclear 38400 tty1
- 1:2345:respawn:/bin/login -f pi tty1 </dev/tty1 >/dev/tty1 2>&1

### WIFI
- sudo nano /etc/wpa_supplicant/wpa_supplicant.conf
- @see file files/wp_supplicant.conf
- network={id_str="" ssid="" psk=""}
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
- sudo nano /boot/cmdline.txt
- fbcon=map:10 fbcon=font:ProFont6x11
- sudo reboot

## Change Keyboard
- plug a keyboard
- sudo raspi-config
- change keyboard layout
- reboot

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

## Install Aliases
- wget https://raw.githubusercontent.com/sixertoy/retrobox/master/files/.bash_aliases 

## Retropie

### Install
- git clone --depth=1 https://github.com/RetroPie/RetroPie-Setup.git
- cd RetroPie-Setup
- sudo ./retropie_setup.sh
- Install EmulationStation (binary)
- Install Retroarch (binary)
- Install MUPen64 (binary)
- sudo reboot

### Install Themes
- cd RetroPie-Setup
- sudo ./retropie_setup.sh
- Setup/Configuration > Install Themes > Simple + Clean-Look
- Setup/Configuration > Install Samba Shares

### Setup GPU MEM
- sudo nano /boot/config.txt
- gpu_mem_1024=448
- overscan_scale=0
- disable_overscan=1
- sudo reboot

## Optional

### Retropie Configure Emulator
- cd RetroPie-Setup
- sh ./retropie_setup.sh

### Max Overclock PI2
- arm_freq=1000
- core_freq=500
- sdram_freq=500
- over_voltage=2


wget ftp://mondemul.info/mondemul/1/zizo/rhums/n64/Legend%20of%20Zelda,%20The%20-%20Majora's%20Mask.7z
