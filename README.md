# Retrobox
RPI + Retropie + Waveshare TFT 3.5 Screen

## Install

### 1. [INSTALL RASPBIAN - Wheezy](https://www.raspberrypi.org/downloads/raspbian/)

```bash
sudo su
raspi-config
> boot options - console autologin
> expand filesystem
reboot
```

### 2. [INSTALL RETROPIE](https://github.com/RetroPie/RetroPie-Setup/wiki/Manual-Installation)

```bash
sudo su
apt-get update && apt-get upgrade
apt-get install -y git dialog
cd
git clone --depth=1 https://github.com/RetroPie/RetroPie-Setup.git
cd RetroPie-Setup
chmod +x retropie_setup.sh
./retropie_setup.sh
reboot
```

### 3. CONFIG SCREEN

```bash
sudo su
apt-get install rpi-update
rpi-update
reboot
```

```bash
sudo su
vi /boot/config.txt
> hdmi_force_hotplug=1
modprobe fbtft_device name=waveshare
FRAMEBUFFER=/dev/fb1 startx
mv /usr/share/X11/xorg.conf.d/99-fbturbo.conf ~
con2fbmap 1 1
```

### 4. [MIRRORING HDMI TO LCD](http://blog.petrockblock.com/forums/topic/swap-emulationstation-from-hdmi-to-lcd/#post-107972)

```bash
sudo su
apt-get install cmake
git clone https://github.com/tasanakorn/rpi-fbcp
cd rpi-fbcp/
mkdir build
cd build/
cmake ..
make
install fbcp /usr/local/bin/fbcp

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
