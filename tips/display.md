# Display

> **System must be updated and** see [instructions](./_update_system.md)<br>
> **Display Drivers must be installed first**
> see [Tontec](./../displays/tontec35.md) or [Waveshare](./../waveshare35a.md)

## Console on LCD at startup

```bash
sudo nano /boot/cmdline.txt
# At the end of the line
fbcon=map:10 fbcon=font:ProFont6x11
sudo reboot
```

## Switch between HDMI/LCD

```bash
sudo nano /usr/share/X11/xorg.conf.d/99fbturbo.conf
» Edit Option "fbdev" "/dev/fb0" # HDMI
» Edit Option "fbdev" "/dev/fb1" # LCD
sudo reboot
```

## Stream HDMI Output to LCD (Framebuffer)

> Install FBCP package, see instruction [here](./FBCP.md)
