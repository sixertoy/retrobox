# Overclocking & Display

## 1. Overclocking

```bash
sudo raspi-config
» Select Overclocking
» Select RPI2
sudo reboot
```

## 2. Add Tontec Overlay to config

```bash
sudo nano /boot/config.txt
dtoverlay=mz61581-overlay.dtb
```

## 2. Install FBCP

> Active SPI

```bash
sudo raspi-config
» Select Advanced Options
» Activer spi
» Select Active by default
sudo reboot
```

> Install FBCP

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

> Test is FBCP is well installed

```bash
fbcp &
```

> Active FBCP at Boot Startup

```bash
sudo wget -O /etc/init.d/fbcp https://raw.githubusercontent.com/sixertoy/retrobox/master/files/fbcp
sudo chmod +x /etc/init.d/fbcp
sudo update-rc.d fbcp defaults
reboot
```

For a manual start of fbcp run: fbcp &
For a manual stop of fbcp run: killall fbcp

[source](https://github.com/watterott/RPi-Display/blob/master/docu/FAQ.md)

## 3. LCD Configure Display

```bash
sudo /boot/config.txt
» Change gpu_mem=256 to 512
» Change #overscan_left=16 to overscan_left=-30 (remove # behind overscan)
» Change overscan_right, overscan_top, overscan_bottom to -30
CTRL + X > Type 'o' letter > Enter
sudo reboot
```
