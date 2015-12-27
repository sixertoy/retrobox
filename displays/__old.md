# Waveshare 35a

> Instrcutions to install a Waveshare 3.5 LCD Screen on a Raspberry Pi 2


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
