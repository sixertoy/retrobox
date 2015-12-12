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
Option "fbdev" "/dev/fb0" # HDMI
Option "fbdev" "/dev/fb1" # LCD
```

## Install Chromium

```bash
sudo apt-get install chromium
```

## Disable/Enable Wifi

```bash
sudo ifdown wlan0
sudo ifup wlan0
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
