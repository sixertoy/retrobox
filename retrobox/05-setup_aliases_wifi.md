# 5. Setup Aliases & Wifi

> Create Aliases

```bash
sudo nano ~/.bash_aliases
» alias ll='ls -l'
» alias roms='cd /home/pi/RetroPie/roms/'
» alias es='/usr/bin/emulationstation'
» alias rpies='sudo /home/pi/RetroPie-Setup/retropie_setup.sh'
sudo reboot
```

> Setup Wifi

```bash
sudo nano /etc/wpa_supplicant/wpa_supplicant.conf
» ssid="_SSID_"
» psk="_WPA_SHARED_KEY_"
```
