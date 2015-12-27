

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
