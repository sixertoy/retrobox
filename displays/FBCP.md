# Raspberry Pi Framebuffer Copy

This program used for copy primary framebuffer to secondary framebuffer (eg. FBTFT)<br>
Mirroring HDMI Output to LCD Display

[FBCP](https://github.com/tasanakorn/rpi-fbcp)

## Install

```bash
cd ~
sudo apt-get install -y cmake
git clone https://github.com/tasanakorn/rpi-fbcp
mkdir -p rpi-fbcp/build
cd rpi-fbcp/build
cmake ..
make
sudo install fbcp /usr/local/bin/fbcp
```

> **To start FBCP**

```bash
# We need to switch the console to fb0 first
con2fbmap 1 0
sudo service fbcp start
```

> **To stop FBCP**

```bash
sudo service fbcp stop
con2fbmap 1 1
```

[source](https://github.com/notro/fbtft/wiki/FBTFT-on-Raspian#framebuffer-copy)

## Install as a Service

```bash
cd ~
sudo wget -O /etc/init.d/fbcp https://gist.github.com/notro/eac0fec51cac67bb99c7/raw/4804a36459db10b17d35451d98d4573a045084be/fbcp
sudo chmod +x /etc/init.d/fbcp
```
