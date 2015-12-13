# Overclocking & Display

## 1. Overclocking

```bash
sudo raspi-config
» Select Overclocking
» Select RPI2
sudo reboot
```

## 2. Active SPI

```bash
sudo raspi-config
» Select Advanced Options
» Activer spi
» Select Active by default
sudo reboot
```

## 3. Add Tontec Overlay to config

```bash
sudo nano /boot/config.txt
dtoverlay=mz61581-overlay.dtb
» Press CTRL+X to save & quit (overwrite=yes and enter to validate filename)
```

> ms61581 is the open source overlay compatible with the Tontec 3.5 Screen

## 4. Install FBCP

```bash
cd
sudo apt-get install cmake
git clone https://github.com/tasanakorn/rpi-fbcp
cd rpi-fbcp/
mkdir build
cd build/
cmake ..
make
sudo mkdir /usr/local/bin (may already exists)
sudo install fbcp /usr/local/bin/fbcp
sudo reboot
```

[source](https://github.com/notro/fbtft/wiki/Framebuffer-use#framebuffer-mirroring)

> Test if FBCP is well installed

```bash
fbcp &
» What you see on your HDMI Display should appears on your LCD display
» FBCP must setted for an automatic startup during boot sequence

» For a manual start of fbcp run: fbcp & (Process ID should be logged in console)
» For a manual stop of fbcp run: killall fbcp (Console warn that process has been completed)
```

> Startup FBCP during Boot sequence

```bash
cd
sudo wget -O /etc/init.d/fbcp https://raw.githubusercontent.com/sixertoy/retrobox/master/files/fbcp
sudo chmod +x /etc/init.d/fbcp
sudo update-rc.d fbcp defaults
sudo reboot
» Display is configured at startup
```

[source](https://github.com/watterott/RPi-Display/blob/master/docu/FAQ.md)

## 3. LCD Configure Display

```bash
sudo /boot/config.txt
» Change gpu_mem=256 to 512
» Change #overscan_left=16 to overscan_left=-30 (remove # behind overscan)
» Change overscan_right, overscan_top, overscan_bottom to -30
» Press CTRL+X to save & quit (overwrite=yes and enter to validate filename)
sudo reboot
```
