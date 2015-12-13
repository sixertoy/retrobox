# Raspberry Tricks

## Auto Login

```bash
sudo nano /etc/inittab
» #1:2345:respawn:/sbin/getty 115200 tty1
» 1:2345:respawn:/bin/login -f pi tty1 </dev/tty1 >/dev/tty1 2>&1
sudo reboot
```

[source](http://www.opentechguides.com/how-to/article/raspberry-pi/5/raspberry-pi-auto-start.html)

## Show Raspberry OS Version

```bash
sudo apt-get install lsb-release
» lsb_release -a
```

## Switch between HDMI/LCD

```bash
sudo nano /usr/share/X11/xorg.conf.d/99fbturbo.conf
» Option "fbdev" "/dev/fb0" # HDMI
» Option "fbdev" "/dev/fb1" # LCD
```

## Install Chromium

```bash
sudo apt-get install chromium
```

## Setup & Disable/Enable Wifi

> Via SSH

```bash
sudo nano /etc/wpa_supplicant/wpa_supplicant.conf
» network={
» ssid="The_ESSID_from_earlier"
» psk="Your_wifi_password"
» }
```

```bash
sudo ifdown wlan0
sudo ifup wlan0
```

[source](https://www.raspberrypi.org/documentation/configuration/wireless/wireless-cli.md)

> Via RPIES

```bash
cd
rpies (launch retropie setup)
Select setup/configuration
Select Configure WIFI
Select a Network an enter your Secret Key
sudo reboot
```


## Show usb devices

```bash
lsusb
```

## Show installed modules

```bash
lsmod
```

## Show hidden files

```bash
ls -lA
```

## Show Disk Space

```bash
df -h
```

## Setup Aliases & Welcome screen

```bash
rm .bashrc
wget https://raw.githubusercontent.com/sixertoy/retrobox/master/files/.bashrc
wget https://raw.githubusercontent.com/sixertoy/retrobox/master/files/.bash_aliases
sudo reboot
```

## Setup Audio Output

> Switch the audio output to HDMI

```bash
amixer cset numid=3 2
```

> Switch the audio output to headphone jack

```bash
amixer cset numid=3 1
```

> Automatic switch audio

```bash
amixer cset numid=3 0
```

> If not getting audio via HDMI

```bash
sudo nano /boot/config.txt
» hdmi_drive=2
```

## 1. Overclocking

```bash
sudo raspi-config
» Select Overclocking
» Select RPI2
sudo reboot
```



