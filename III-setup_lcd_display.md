# III. LCD Display

## 1. Active SPI

```bash
sudo raspi-config
» Select Advanced Options
» Activer spi
» Select Active by default
sudo reboot
```

## 2. Add Tontec Overlay to config

```bash
sudo nano /boot/config.txt
» At the last line of the file
dtoverlay=mz61581-overlay.dtb
» Press CTRL+X to save & quit (overwrite=yes and enter to validate filename)
```

> ms61581 is the open source overlay compatible with the Tontec 3.5 Screen

## 3. Install FBCP (Frame Buffer Copy)

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
» Display is now configured at startup
```

[source](https://github.com/watterott/RPi-Display/blob/master/docu/FAQ.md)

[**NEXT - Configure Display**]()
