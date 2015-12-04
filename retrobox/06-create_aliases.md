# 7. Complete Installation

> Create Aliases

```bash
sudo nano ~/.bash_aliases
» alias ll='ls -l'
» alias roms='cd /home/pi/RetroPie/roms/'
» alias emulstation='/usr/bin/emulationstation'
» alias rpies='sudo /home/pi/RetroPie-Setup/retropie_setup.sh'
```

> Setup Wifi

```bash
sudo nano /etc/wpa_supplicant/wpa_supplicant.conf
» ssid="_SSID_"
» psk="_WPA_SHARED_KEY_"
```
