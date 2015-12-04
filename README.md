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

#### 1. Expand FS

```bash
sudo raspi-config
» Select Expand the filesystem
sudo reboot
```

#### 2. Change locales

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

#### 3. Update Packages
```bash
sudo apt-get update
sudo apt-get upgrade
sudo rpi-update
sudo reboot
```

#### 4. Auto Login

```bash
sudo nano /etc/inittab
» #1:2345:respawn:/sbin/getty 115200 tty1
» 1:2345:respawn:/bin/login -f pi tty1 </dev/tty1 >/dev/tty1 2>&1
sudo reboot
```

[source](http://www.opentechguides.com/how-to/article/raspberry-pi/5/raspberry-pi-auto-start.html)

#### 5. Install Overlay

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

[source](https://github.com/swkim01/waveshare-dtoverlays)

#### 6. Install Wifi

> Checkup

```bash
lsusb
# Bus XXX Device XXX: ID XXXX:7811 Edimax Technology Co., Ltd EW-7811Un 802.11n Wireless Adapter [Realtek RTL8188CUS]
lsmod
# 8192cu      528485  0
iwconfig
# wlan0       unassociated  Nickname:"<WIFI@REALTEK>"
```

> Config

```bash
sudo nano /etc/wpa_supplicant/wpa_supplicant.conf
» network={
» ssid="_SSID_" # replace with box id
» proto=RSN
» key_mgmt=WPA-PSK
» pairwise=CCMP TKIP
» group=CCMP TKIP
» psk="_WPA_SHARED_KEY_" # replace with secret key
» }
```

> Init only if checkuo was KO

```bash
sudo nano /etc/network/interfaces
» auto wlan0
» allow-hotplug wlan0
» iface wlan0 inet manual
» wpa-roam /etc/wpa_supplicant/wpa_supplicant.conf
# restart adpater
sudo ifup wlan0
# show ip
ifconfig wlan0
sudo reboot
```

[source](http://www.savagehomeautomation.com/projects/raspberry-pi-installing-the-edimax-ew-7811un-usb-wifi-adapte.html)

#### 7. Install FBCP

> Install fbcp

```bash
sudo apt-get install cmake
git clone https://github.com/tasanakorn/rpi-fbcp
cd rpi-fbcp/
mkdir build
cd build/
cmake ..
make
sudo install fbcp /usr/local/bin/fbcp
```

[source](https://github.com/notro/fbtft/wiki/Framebuffer-use#framebuffer-mirroring)

> Load drivers and FBCP

```bash
sudo nano /etc/modules
» flexfb  width=320  height=480  regwidth=16 init=-1,0xb0,0x0,-1,0x11,-2,250,-1,0x3A,0x55,-1,0xC2,0x44,-1,0xC5,0x00,0x00,0x00,0x00,-1,0xE0,0x0F,0x1F,0x1C,0x0C,0x0F,0x08,0x48,0x98,0x37,0x0A,0x13,0x04,0x11,0x0D,0x00,-1,0xE1,0x0F,0x32,0x2E,0x0B,0x0D,0x05,0x47,0x75,0x37,0x06,0x10,0x03,0x24,0x20,0x00,-1,0xE2,0x0F,0x32,0x2E,0x0B,0x0D,0x05,0x47,0x75,0x37,0x06,0x10,0x03,0x24,0x20,0x00,-1,0x36,0x28,-1,0x11,-1,0x29,-3
» fbtft_device debug=3 rotate=90 name=flexfb speed=48000000 fps=50 gpios=reset:25,dc:24
```

[source](https://github.com/cdario/waveshare-3.5-Spotpear-for-Rpi)

> Init FBCP & Startup

```bash
sudo wget -O /etc/init.d/fbcp https://github.com/watterott/RPi-Display/raw/master/docu/fbcp
sudo chmod +x /etc/init.d/fbcp
sudo update-rc.d fbcp defaults
```

[source](https://github.com/watterott/RPi-Display/blob/master/docu/FAQ.md)

#### 8. Install Retropie

```bash
cd
wget https://github.com/RetroPie/RetroPie-Setup/archive/v3.0.tar.gz
tar -zxvf v3.0.tar.gz
rm v3.0.tar.gz
mv RetroPie-Setup-3.0/ RetroPie-Setup
```

```bash
sudo ./retropie_setup.sh
» Install Emulationstation (5 | 307) [Binary]
```

#### 9. Create aliases

```bash
sudo nano ~/.bash_aliases
» alias ll='ls -l'
» alias roms='cd /home/pi/RetroPie/roms/'
» alias emulstation='/usr/bin/emulationstation'
» alias rpies='sudo /home/pi/RetroPie-Setup/retropie_setup.sh'
```

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


