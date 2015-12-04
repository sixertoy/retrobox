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

##### Raspbian

- [Raspbian Wheezy](https://www.raspberrypi.org/downloads/raspbian/)
- [RetroPie 3.0](https://github.com/RetroPie/RetroPie-Setup/releases/tag/v3.0)

## Install

### 1. Expand FS
```bash
sudo raspi-config
» Select Expand the filesystem
sudo reboot
```

### 2. Change locales

> Clavier FR

```bash
sudo raspi-config
» Select Set keyboard layout
» Set Keyboard model : Generic 105-key (intl) PC
» Set Keyboard layout : Other
» Set Country of origin for the keyboard : French
» Set Keyboard layout : French
» Set Key to function as AltGr : The default for the keyboard layout
» Set Compose key : No compose key
» Ask for Use Control+Alt+Backspace to terminate the X server? : No
```

> Language

```bash
sudo raspi-config
» Select Set locale
» Unset en_GB.UTF-8 UTF-8
» Set fr_FR ISO-8859-1
» Set fr_FR.UTF-8 UTF-8
» Set UTF-8 as default
```

> Timezone

```bash
sudo raspi-config
» Select Set Timezone
» Set Geographic area : Europe
» Set Time zone : Paris
```

```bash
sudo reboot
```

[source](http://www.tropfacile.net/doku.php/raspberry-pi/comment-passer-votre-raspberry-en-francais)

### 3. Update Packages
```bash
sudo apt-get update
sudo apt-get upgrade
sudo rpi-update
sudo reboot
```

### 4. Auto Login

```bash
sudo nano /etc/inittab
» #1:2345:respawn:/sbin/getty 115200 tty1
» 1:2345:respawn:/bin/login -f pi tty1 </dev/tty1 >/dev/tty1 2>&1
sudo reboot
```

[source](http://www.opentechguides.com/how-to/article/raspberry-pi/5/raspberry-pi-auto-start.html)

### 5. Install Overlay

```bash
sudo raspi-config
» active spi
» active i2c
sudo reboot
```

```bash
git clone https://github.com/swkim01/waveshare-dtoverlays.git
sudo cp waveshare-dtoverlays/waveshare35a-overlay.dtb /boot/overlays/
sudo nano /boot/config.txt
» dtoverlay=waveshare35a
sudo reboot
```

### 6. Install Wifi with edimax key

```bash
```

[source](https://github.com/swkim01/waveshare-dtoverlays)

### 10. Tweaks & Helps

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
Option "fbdev" "/dev/fb0" # LCD
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


