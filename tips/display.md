# Display

> **System must be updated and** see [instructions](./_update_system.md)<br>
> **Display Drivers must be installed first**
> see [Tontec](./../displays/tontec35.md) or [Waveshare](./../displays/waveshare35a.md)

[FBTFT Documentation](https://github.com/notro/fbtft/wiki)

## Console on Displays

> Switch dynamically 

```bash
con2fbmap 1 0 # To HDMI
# con2fbmap 1 1 # To LCD
```

> **Permanent Switch on Raspbian Wheezy**

```bash
cd ~
sudo nano /usr/share/X11/xorg.conf.d/99-fbturbo.conf
Option "fbdev" "/dev/fb1" # To LCD
# Option "fbdev" "/dev/fb0" # To HDMI
sudo reboot
```

## Enable Console on LCD at startup

```bash
sudo nano /boot/cmdline.txt
# At the end of the line
fbcon=map:10 fbcon=font:ProFont6x11
sudo reboot
```

[source](https://github.com/notro/fbtft/wiki/Boot-console)

## Backlight

#### Turn off backlight

```bash
echo 1 | sudo tee /sys/class/backlight/*/bl_power
```

#### Turn on backlight

```bash
echo 0 | sudo tee /sys/class/backlight/*/bl_power
```

[source](https://github.com/notro/fbtft/wiki/Backlight)

## X Window on LCD

```bash
sudo mkdir -p /etc/X11/xorg.conf.d/
sudo wget https://raw.githubusercontent.com/sixertoy/retrobox/master/files/fbtft.conf
sudo mv ~/fbtft.conf /etc/X11/xorg.conf.d/
```

[source](https://github.com/notro/fbtft/wiki/FBTFT-on-Raspian#where-to-display-x-windows)<br>
[x window multiseat](https://github.com/notro/fbtft-spindle/wiki/Appendix#x-windows-multiseat)

## Stream HDMI Output to LCD (Framebuffer)

> Install FBCP package, see instruction [here](./../displays/FBCP.md)
