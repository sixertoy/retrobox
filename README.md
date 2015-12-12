# Retrobox

> Raspberry PI2 B<br>
> Tutorial made under Windows10 and an SSH Client (MSYSGit + Console2)

## Hardware

- [Raspberry Pi 2 Type B](http://www.amazon.fr/dp/B00T2U7R7I)
- [Edimax EW-7811UN Nano Adaptateur clé USB sans fil 150 Mbps](http://www.amazon.fr/dp/B003MTTJOY)
- [Transcend 16 Go Carte mémoire microSDHC Classe 10](http://www.amazon.fr/dp/B00APCMMEK)

## LCDs 

##### for Retro Gaming

- [Tontec 3,5 pouces écran tactile LCD 480x320](http://www.amazon.fr/dp/B00OFLKPG4)
- [Aukru 5v 2000mA Alimentation](http://www.amazon.fr/dp/B00V07YY0Y)

##### for Micro Computer

- [3,5 pouces TFT écran tactile LCD (A) 320x480](http://www.amazon.fr/dp/B00SKOPWC4)
- [Aukru NEW 3en 1 Kit - Transparent Case + 5v 2000mA Alimentation](http://www.amazon.fr/dp/B00UCSO9G6)

## Software

##### Retrobox

> [Raspbian Wheezy](https://www.raspberrypi.org/downloads/raspbian/)  & [Retropie](https://github.com/RetroPie/RetroPie-Setup/wiki/First-Installation)<br>
or only<br>
> [Recalbox](http://www.recalbox.com)

##### Windows

- [SDFormater](https://www.sdcard.org/downloads/formatter_4/)
- [WinSCP](https://winscp.net/eng/docs/lang:fr)
- [Win32DiskImage](http://sourceforge.net/projects/win32diskimager/)
- [SuperPutty](https://github.com/jimradford/superputty)
- [MiniTool Partition Manager](http://www.partitionwizard.com)

## Install

1. [Prepare SDCard](./retrobox/01-prepare_sdcard.md)
2. [Install Raspbian](./retrobox/01-install_raspbian.md)
3. [Install Wifi](./retrobox/04-install_wifi.md)
4. [Install Retropie](./retrobox/03-install_retropie.md)

3. [Install LCD](./retrobox/02-config_lcd.md)


## Tweaks & Helps

> Show Wheezy version

```bash
sudo apt-get install lsb-release
» lsb_release -a
```

> Switch between HDMI/LCD

```bash
sudo nano /usr/share/X11/xorg.conf.d/99fbturbo.conf
Option "fbdev" "/dev/fb0" # HDMI
Option "fbdev" "/dev/fb1" # LCD
```

> Install Chromium

```bash
sudo apt-get install chromium
```

> Command line

```bash
# show usb devices
lsusb

# show installed modules
lsmod
```

> Check USB Device

```bash
lsusb
```

> Disable/Enable Wifi

```bash
sudo ifdown wlan0
sudo ifup wlan0
```
