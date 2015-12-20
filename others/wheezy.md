- install wheez on sdcard
- sudo raspi-config
- extend FS
- reboot
- sudo apt-get update
- sudo apt-get upgrade
- reboot
- sudo rpi-update
- reboot
- sudo raspi-config
- change locale
- reboot
- change timezone
- change keyboard layout
- reboot
- sudo raspi-config
- active spi
- reboot
- sudo nano /boot/config.txt
- #screen
- dtparam=spi=on
- dtoverlay=mz61581-overlay.dtb
- #overclock PI2
- arm_freq=1000
- core_freq=500
- sdram_freq=500
- over_voltage=2
- #overclock none
- arm_freq=700
- core_freq=250
- sdram_freq=400
- over_voltage=0

## WIFI
- sudo nano /etc/wpa_supplicant/wpa_supplicant.conf

## Retropie
- git clone --depth=1 https://github.com/RetroPie/RetroPie-Setup.git
- cd Retropie-Setup
- sudo ./retropie-setup
- reboot
- cd Retropie-Setup
- sh ./retropie-setup
- Install EmulationStation (binary)
- Install Retroarch (binary)
- 


wget ftp://mondemul.info/mondemul/1/zizo/rhums/n64/Legend%20of%20Zelda,%20The%20-%20Majora's%20Mask.7z
