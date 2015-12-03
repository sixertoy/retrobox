# Retrobox
RPI + Retropie + Waveshare TFT 3.5 Screen

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
2. Autoload EmulationStation
3. Install Themes (simple, simple-dark, nbba, clean-look, simplebigart)
4. Enable Samba shares
5. Configure Wifi
6. Install Retroarch
7. Install Emulators
8. Reboot

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
```


### 5. CONFIG SCREEN

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
