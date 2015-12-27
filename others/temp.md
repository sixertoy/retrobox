# Jessie

# Jessie

> **install fbcp**

- git clone https://github.com/tasanakorn/rpi-fbcp
- cd rpi-fbcp/
- mkdir build
- cd build/
- cmake ..
- make
- sudo mkdir /usr/local/bin (may already exists)
- sudo install fbcp /usr/local/bin/fbcp
- sudo wget -O /etc/init.d/fbcp https://raw.githubusercontent.com/sixertoy/retrobox/master/files/fbcp
- sudo chmod +x /etc/init.d/fbcp
- sudo reboot

> **install retropie**

- git clone --depth=1 https://github.com/RetroPie/RetroPie-Setup.git
- cd RetroPie-Setup
- sudo chmod +x retropie_setup.
- sudo sh ./retropie_setup.sh
- install emulators (binary)
  - emulationstation
  - retroarch
  - mupen64plus (N64)
  - lr-pcsx-rearmed (PSX)
  - reicast (Dreamcast)
  - lr-SNES9x-Next (SNES)
  - lr-mgba (GBA)
  - lr-genesis-plus-gx (Sega MS + MD)
  - lr-nestopia (NES)
  - ppsspp (PSP)
  - lf-fba-next (Final Burn - Arcade)
- sudo reboot
- rpies
- install themes
  - clean-look
- install samba shares

# NOOBS

## Make root file 

- cd /
- sudo tar -cvpf root.tar /* --exclude=proc/* --exclude=sys/* --exclude = dev/pts/*
- sudo xz  -9  -e  root.tar

## Make boot file 

- cd /boot
- sudo tar -cvpf boot.tar /*
- sudo xz  -9  -e  boot.tar

## Get file over ssh

- scp pi@<rpi_ip_adress>:root.tar.xz ~/Downloads
- scp pi@<rpi_ip_adress>:boot.tar.xz ~/Downloads

## Config boot

- edit recovery.cmdline
- add silentinstall
- in os/ replace root.tar.xz
- in os/ replace boot.tar.xz
- edit os.json
- edit raspbian.png
- edit slides/*


# Wheezy

## Languages
- sudo raspi-config
- change locale
- change timezone
- sudo reboot

## LCD Display

### Display
- sudo raspi-config
- active spi
- sudo reboot
- sudo nano /boot/config.txt
- dtparam=spi=on
- dtoverlay=mz61581-overlay.dtb

### Console on LCD
- 
#### With EmulationStation
- con2fbmap 1 1 # HDMI -> LCD
- con2fbmap 1 0 # LCD -> HDMI

## Install FBCP
- sudo apt-get install cmake
- git clone https://github.com/tasanakorn/rpi-fbcp
- cd rpi-fbcp/
- mkdir build
- cd build/
- cmake ..
- make
- sudo mkdir /usr/local/bin
- sudo install fbcp /usr/local/bin/fbcp

## Retropie

### Install

### Max Overclock PI2
- arm_freq=1000
- core_freq=500
- sdram_freq=500
- over_voltage=2
- 
# 3. Install LCD

> Active SPI

```bash
sudo raspi-config
» Select Advanced Options
» Activer spi
» Select Active by default
sudo reboot
```

> Install FBCP & Startup

```bash
sudo apt-get install cmake
git clone https://github.com/tasanakorn/rpi-fbcp
cd rpi-fbcp/
mkdir build
cd build/
cmake ..
make
sudo install fbcp /usr/local/bin/fbcp
sudo reboot
```

[source](https://github.com/notro/fbtft/wiki/Framebuffer-use#framebuffer-mirroring)

```bash
sudo wget -O /etc/init.d/fbcp https://raw.githubusercontent.com/sixertoy/retrobox/master/files/fbcp
sudo chmod +x /etc/init.d/fbcp
sudo update-rc.d fbcp defaults
reboot
```

For a manual start of fbcp run: fbcp &
For a manual stop of fbcp run: killall fbcp

[source](https://github.com/watterott/RPi-Display/blob/master/docu/FAQ.md)

> Install Overlay

```bash
cd
git clone https://github.com/swkim01/waveshare-dtoverlays.git
sudo cp waveshare-dtoverlays/waveshare35a-overlay.dtb /boot/overlays/
```

> Load drivers

```bash
sudo nano /etc/modules
» snd-bcm2835
» i2c-bcm2708
» i2c-dev

» flexfb  width=320  height=480  regwidth=16 init=-1,0xb0,0x0,-1,0x11,-2,250,-1,0x3A,0x55,-1,0xC2,0x44,-1,0xC5,0x00,0x00,0x00,0x00,-1,0xE0,0x0F,0x1F,0x1C,0x0C,0x0F,0x08,0x48,0x98,0x37,0x0A,0x13,0x04,0x11,0x0D,0x00,-1,0xE1,0x0F,0x32,0x2E,0x0B,0x0D,0x05,0x47,0x75,0x37,0x06,0x10,0x03,0x24,0x20,0x00,-1,0xE2,0x0F,0x32,0x2E,0x0B,0x0D,0x05,0x47,0x75,0x37,0x06,0x10,0x03,0x24,0x20,0x00,-1,0x36,0x28,-1,0x11,-1,0x29,-3
» fbtft_device debug=3 rotate=90 name=flexfb speed=16000000 gpios=reset:25,dc:24 fps=30
» ads7846_device model=7846 cs=1 gpio_pendown=17  keep_vref_on=1 swap_xy=1 pressure_max=255 x_plate_ohms=60 x_min=200 x_max=3900 y_min=200 y_max=3900

sudo nano /boot/config.txt
» dtparam=spi=on
» dtparam=i2c_arm=on

» dtoverlay=w1-gpio-pullup,gpiopin=4,extpullup=1
» dtoverlay=ads7846,cs=1,penirq=17,penirq_pull=2,speed=1000000,keep_vref_on=1,swapxy=1,pmax=255,xohms=60,xmin=200,xmax=3900,ymin=200,ymax=3900
» dtoverlay=waveshare35a

sudo reboot
```

**From there LCD Screen should not be white anymore and will show up Raspberry console**

> Changes config.txt to scale

```bash
sudo nano /boot/config.txt
» overscan_scale=1
» overscan_top=-18
» overscan_left=-18
» overscan_right=-18
» overscan_bottom=-18
```
