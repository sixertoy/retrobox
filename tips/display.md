# Display

> **System must be updated and** see [instructions](./_update_system.md)<br>
> **Display Drivers must be installed first**
> see [Tontec](./../displays/tontec35.md) or [Waveshare](./../displays/waveshare35a.md)

[FBTFT Package](https://github.com/notro/fbtft/wiki)

## Console on LCD at startup

```bash
sudo nano /boot/cmdline.txt
# At the end of the line
fbcon=map:10 fbcon=font:ProFont6x11
sudo reboot
```

[source](https://github.com/notro/fbtft/wiki/Boot-console)

## X Window on LCD

```bash
sudo mkdir -p /etc/X11/xorg.conf.d/
sudo wget https://raw.githubusercontent.com/sixertoy/retrobox/master/files/fbtft.conf
sudo mv ~/fbtft.conf /etc/X11/xorg.conf.d/
```

[source](https://github.com/notro/fbtft/wiki/FBTFT-on-Raspian#where-to-display-x-windows)
[x window multiseat](https://github.com/notro/fbtft-spindle/wiki/Appendix#x-windows-multiseat)

## Stream HDMI Output to LCD (Framebuffer)

> Install FBCP package, see instruction [here](./../displays/FBCP.md)
