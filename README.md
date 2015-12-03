# Retrobox
RPI + Retropie + Waveshare TFT 3.5 Screen

## Install

### 1. [INSTALL RASPBIAN - Wheezy](https://www.raspberrypi.org/downloads/raspbian/)

```bash
sudo raspi-config
```
boot options > console autologin
expand filesystem
```bash
sudo reboot
```

### 2. [INSTALL RETROPIE](https://github.com/RetroPie/RetroPie-Setup/wiki/Manual-Installation)

```bash
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install -y git dialog
cd
git clone --depth=1 https://github.com/RetroPie/RetroPie-Setup.git
cd RetroPie-Setup
sudo chmod +x retropie_setup.sh
sudo ./retropie_setup.sh
sudo reboot
```

### 3. CONFIG SCREEN

```bash
sudo rpi-update
sudo reboot
sudo vi /boot/config.txt
> hdmi_force_hotplug=1

sudo modprobe fbtft_device name=waveshare
FRAMEBUFFER=/dev/fb1 startx
sudo mv /usr/share/X11/xorg.conf.d/99-fbturbo.conf ~
con2fbmap 1 1
```

### 4. [MIRRORING HDMI TO LCD](http://blog.petrockblock.com/forums/topic/swap-emulationstation-from-hdmi-to-lcd/#post-107972)

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

## Tools

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
