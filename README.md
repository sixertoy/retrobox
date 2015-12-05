# Retrobox
> Raspberry PI2 B / Waveshare 3.5" LCD / Wheezy (on windows)

## Hardware

- [Raspberry Pi 2 Type B](http://www.amazon.fr/dp/B00T2U7R7I)
- [Edimax EW-7811UN Nano Adaptateur clé USB sans fil 150 Mbps](http://www.amazon.fr/dp/B003MTTJOY)
- [3,5 pouces TFT écran tactile LCD (A) 320 * 480](http://www.amazon.fr/dp/B00SKOPWC4)
- [Transcend 16 Go Carte mémoire microSDHC Classe 10](http://www.amazon.fr/dp/B00APCMMEK)
- [Aukru NEW 3en 1 Kit - Transparent Case + 5v 2000mA Alimentation](http://www.amazon.fr/dp/B00UCSO9G6)

## Software

##### Windows

- [SDFormater](https://www.sdcard.org/downloads/formatter_4/)
- [WinSCP](https://winscp.net/eng/docs/lang:fr)
- [Win32DiskImage](http://sourceforge.net/projects/win32diskimager/)
- [SuperPutty](https://github.com/jimradford/superputty)
- [MiniTool Partition Manager](http://www.partitionwizard.com)

##### Raspbian

- [Raspbian Wheezy](https://www.raspberrypi.org/downloads/raspbian/)
- [RetroPie-Setup 3.2.1](https://github.com/RetroPie/RetroPie-Setup/archive/3.2.1.tar.gz)

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

> Welcome Script

```bash
Copy bash_welcome_script inside ~/.bashrc
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

> Console Font Size

```bash
sudo nano /etc/default/console-setup
» FONTFACE="TerminusBold"
» FONTSIZE="10x20"
sudo /etc/init.d/console-setup restart
```

ou 

```bash
sudo dpkg-reconfigure console-setup
»
sudo /etc/init.d/console-setup restart
```

> Check USB Device

```bash
lsusb
# Bus XXX Device XXX: ID XXXX:7811 Edimax Technology Co., Ltd EW-7811Un 802.11n Wireless Adapter [Realtek RTL8188CUS]
```
