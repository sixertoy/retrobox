# Retrobox

## Hardware

- [Raspberry Pi 2 Type B](http://www.amazon.fr/dp/B00T2U7R7I)
- [Edimax EW-7811UN Nano Adaptateur clé USB sans fil 150 Mbps](http://www.amazon.fr/dp/B003MTTJOY)
- [3,5 pouces TFT écran tactile LCD (A) 320 * 480](http://www.amazon.fr/dp/B00SKOPWC4)
- [Transcend 16 Go Carte mémoire microSDHC Classe 10](http://www.amazon.fr/dp/B00APCMMEK)
- [Aukru NEW 3en 1 Kit - Transparent Case + 5v 2000mA Alimentation](http://www.amazon.fr/dp/B00UCSO9G6)

## Install

### 1. [INSTALL RASPBIAN - Wheezy](http://www.waveshare.com/wiki/3.5inch_RPi_LCD_(A))

```bash
sudo raspi-config
> expand filesystem
reboot
```

> Optional

```bash
sudo raspi-config
> Overclock PI2
> Split Memory 512
reboot
```

### 2. [INSTALL RETROPIE](https://github.com/RetroPie/RetroPie-Setup/wiki/Manual-Installation)

```bash
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y git dialog
cd
git clone --depth=1 https://github.com/RetroPie/RetroPie-Setup.git
cd RetroPie-Setup
chmod +x retropie_setup.sh
sudo ./retropie_setup.sh
sudo reboot
```

1. Install EmulationStation
2. Install Retroarch
3. Install Emulators
  - iMame4all : libretro-imame4all
  - Playstation : libretro-pcsx-rearmed
  - Super Nintendo : libretro-pocketsnes
  - Game Boy Advance : libretro-gpsp
  - NES : libretro-fceumm
  - Master System : libretro-picodrive
  - PCEngine : libretro-mednafen-pce-fast
  - N64 : MUPEN64Plus
4. Reboot
5. Autoload EmulationStation
6. Bash Welcome Tweak
7. Install Themes
  - simple
  - simple-dark
  - nbba
  - simplebigart
  - clean-look
8. Enable Samba shares
9. Configure Wifi
9. Reboot
10. Install Roms
11. Install BIOS
12. Reboot

### Install LCD Overlays

```bash
git clone https://github.com/swkim01/waveshare-dtoverlays.git
sudo cp waveshare-dtoverlays/waveshare35a-overlay.dtb /boot/overlays/
sudo nano /boot/config.txt
dtparam=spi=on
dtoverlay=waveshare35a
#dtoverlay=waveshare35a:swapxy=1
```

### 3. [MIRRORING HDMI TO LCD](http://blog.petrockblock.com/forums/topic/swap-emulationstation-from-hdmi-to-lcd/#post-107972)

```bash
sudo apt-get install cmake
git clone https://github.com/tasanakorn/rpi-fbcp
cd rpi-fbcp/
mkdir build
cd build/
cmake ..
make
sudo install fbcp /usr/local/bin/fbcp

#now make sure you are cd'ed into the build folder, now run the program:
fbcp &

#now you can run emulation station:
emulationstation
```

### 5. SET FBCP AT STARTUP

```bash
sudo nano /etc/init.d/rc.local
function do_start()
  /usr/local/bin/fbcp &
  ...
```

### 6. CONFIG SCREEN

```bash
```

## Tools

### Boot Log

```bash
dmesg
```

### Free Disk Space

```bash
df -h
```

### Show distrib

```bash
sudo su
apt-get install lsb-release 
lsb_release
```

### Disbale Overclocking

```bash
hold shift at startup
```