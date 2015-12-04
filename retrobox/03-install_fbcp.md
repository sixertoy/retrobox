# 4. Install FBCP

> Install fbcp

```bash
sudo apt-get install cmake
git clone https://github.com/tasanakorn/rpi-fbcp
cd rpi-fbcp/
mkdir build
cd build/
cmake ..
make
sudo install fbcp /usr/local/bin/fbcp
```

[source](https://github.com/notro/fbtft/wiki/Framebuffer-use#framebuffer-mirroring)

> Load drivers and FBCP

```bash
sudo nano /etc/modules
» flexfb  width=320  height=480  regwidth=16 init=-1,0xb0,0x0,-1,0x11,-2,250,-1,0x3A,0x55,-1,0xC2,0x44,-1,0xC5,0x00,0x00,0x00,0x00,-1,0xE0,0x0F,0x1F,0x1C,0x0C,0x0F,0x08,0x48,0x98,0x37,0x0A,0x13,0x04,0x11,0x0D,0x00,-1,0xE1,0x0F,0x32,0x2E,0x0B,0x0D,0x05,0x47,0x75,0x37,0x06,0x10,0x03,0x24,0x20,0x00,-1,0xE2,0x0F,0x32,0x2E,0x0B,0x0D,0x05,0x47,0x75,0x37,0x06,0x10,0x03,0x24,0x20,0x00,-1,0x36,0x28,-1,0x11,-1,0x29,-3
» fbtft_device debug=3 rotate=90 name=flexfb speed=48000000 fps=50 gpios=reset:25,dc:24
```

[source](https://github.com/cdario/waveshare-3.5-Spotpear-for-Rpi)

> Init FBCP & Startup

```bash
sudo wget -O /etc/init.d/fbcp https://raw.githubusercontent.com/sixertoy/retrobox/master/files/fbcp
sudo chmod +x /etc/init.d/fbcp
sudo update-rc.d fbcp defaults
```

For a manual start of fbcp run: fbcp &
For a manual stop of fbcp run: killall fbcp

[source](https://github.com/watterott/RPi-Display/blob/master/docu/FAQ.md)