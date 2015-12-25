

## Preinstall
- copy wheezy image on sdcard
- sudo raspi-config
- extend FS
- reboot

## Update Firmware
- sudo apt-get update
- sudo apt-get upgrade
- sudo reboot
- sudo rpi-update
- sudo reboot

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

#### With Startx
- sudo nano /boot/cmdline.txt
- fbcon=map:10 fbcon=font:ProFont6x11
- sudo reboot
- 
#### With EmulationStation
- con2fbmap 1 1 # HDMI -> LCD
- con2fbmap 1 0 # LCD -> HDMI

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
# recuperation des sources du projet
- git clone --depth=1 https://github.com/RetroPie/RetroPie-Setup.git
- cd RetroPie-Setup
- sudo ./retropie_setup.sh
- Instal Emulators > Install EmulationStation (306) (binary)
- Instal Emulators > Install Retroarch (125) (binary)
- Instal Emulators > Install mupen64plus (116) (binary)
- Instal Emulators > Install lr-snes9x-next (234) (binary)
- sudo reboot

### Install Themes & Tweaks
- cd RetroPie-Setup
- sudo ./retropie_setup.sh
- Setup/Configuration > Install Themes > Simple + Clean-Look
- Setup/Configuration > Install Samba Shares
- Setup/Configuration > Configure Splashscreen (323) > Use default

### Setup GPU MEM
- sudo nano /boot/config.txt
- gpu_mem_1024=448
- overscan_scale=0
- disable_overscan=1
- disable_audio_dither=1
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
