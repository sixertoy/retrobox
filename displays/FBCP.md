# Raspberry Pi Framebuffer Copy

> Used for Retrogaming and watching video with omxplayer<br>
> This program used for copy primary framebuffer to secondary framebuffer (eg. FBTFT)<br>
> Mirroring HDMI Output to LCD Display

[FBCP](https://github.com/tasanakorn/rpi-fbcp)

## 1. Install

```bash
cd ~
sudo apt-get install -y cmake
git clone https://github.com/tasanakorn/rpi-fbcp
mkdir -p rpi-fbcp/build
cd rpi-fbcp/build
cmake ..
make
sudo install fbcp /usr/local/bin/fbcp
sudo wget -O /etc/init.d/fbcp https://raw.githubusercontent.com/sixertoy/retrobox/master/files/fbcp
sudo chmod +x /etc/init.d/fbcp
```

[source](https://github.com/notro/fbtft/wiki/FBTFT-on-Raspian#framebuffer-copy)

## 2. Start/Stop FBCP

#### 2.1. Start

```bash
# Switch the console to fb0 (HDMI)
con2fbmap 1 0
sudo service fbcp start
```

#### 2.2. Stop

```bash
# Switch back the console to fb1 (LCD)
sudo service fbcp stop
con2fbmap 1 1
```

#### 2.3. Test Video

```bash
con2fbmap 1 0
sudo service fbcp start
wget http://download.blender.org/peach/bigbuckbunny_movies/big_buck_bunny_480p_surround-fix.avi
omxplayer big_buck_bunny_480p_surround-fix.avi
# Press CTRL+C to stop video/omxplayer
sudo service fbcp stop
con2fbmap 1 1
```

## 3. Start Service at Startup

#### 3.1. Install Service

```bash
cd ~
sudo nano /boot/cmdline.txt
# remove fbcon=map:10
# exit nano
sudo update-rc.d fbcp defaults
sudo reboot
```

#### 3.2. Remove Service

```bash
cd ~
sudo update-rc.d fbcp defaults
sudo nano /boot/cmdline.txt
# add fbcon=map:10 at the end of the line
# exit nano
sudo reboot
```
