- install wheez on sdcard

## Preinstall
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
- reboot
- change timezone
- change keyboard layout
- reboot

## LCD Display
- sudo raspi-config
- active spi
- reboot
- sudo nano /boot/config.txt
- dtparam=spi=on
- dtoverlay=mz61581-overlay.dtb
- reboot

## Retropie Install
- git clone --depth=1 https://github.com/RetroPie/RetroPie-Setup.git
- cd RetroPie-Setup
- sudo ./retropie_setup.sh
- perform reboot

## WIFI
- sudo nano /etc/wpa_supplicant/wpa_supplicant.conf
- @see file files/wp_supplicant.conf

## Retropie Configure Emulator
- cd RetroPie-Setup
- sh ./retropie_setup.sh
- Install EmulationStation (binary)
- Install Retroarch (binary)

## Max Overclock PI2
- arm_freq=1000
- core_freq=500
- sdram_freq=500
- over_voltage=2


wget ftp://mondemul.info/mondemul/1/zizo/rhums/n64/Legend%20of%20Zelda,%20The%20-%20Majora's%20Mask.7z
