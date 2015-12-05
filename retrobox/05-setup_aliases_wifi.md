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
sudo reboot
```

dwc_otg.lpm_enable=0 console=ttyAMA0,115200 console=tty1 root=/dev/mmcblk0p2 rootfstype=ext4 elevator=deadline rootwait fbtft_device.custom fbtft_device.name=waveshare32b fbtft_device.gpios=dc:22,reset:27 fbtft_device.bgr=1 fbtft_device.speed=48000000 fbcon=map:10 fbcon=font:ProFont6x11 logo.nologo dma.dmachans=0x7f35 console=tty1 consoleblank=0 fbtft_device.fps=50 fbtft_device.rotate=0

