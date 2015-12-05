# 2. Install LCD

> Active SPI

```bash
sudo raspi-config
» active spi
» active i2c
» active Device Tree
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
» fbtft_device debug=3 rotate=90 name=flexfb speed=16000000 gpios=reset:25,dc:24
» ads7846_device model=7846 cs=1 gpio_pendown=17  keep_vref_on=1 swap_xy=1 pressure_max=255 x_plate_ohms=60 x_min=200 x_max=3900 y_min=200 y_max=3900

sudo nano /boot/config.txt
» dtparam=spi=on
» dtparam=i2c_arm=on

» dtoverlay=w1-gpio-pullup,gpiopin=4,extpullup=1
» dtoverlay=ads7846,cs=1,penirq=17,penirq_pull=2,speed=1000000,keep_vref_on=1,swapxy=1,pmax=255,xohms=60,xmin=200,xmax=3900,ymin=200,ymax=3900
» dtoverlay=waveshare35a

reboot
```

**At this point LCD Screen should not be blank anymore**

> Changes config.txt to scale

```bash
sudo nano /boot/config.txt
» overscan_scale=1
» overscan_top=-18
» overscan_left=-18
» overscan_right=-18
» overscan_bottom=-18
```
