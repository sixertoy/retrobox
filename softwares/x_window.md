# X Window Desktop on RPi

> A GUI for Raspbian OS like Windows or Mac OS<br>
> **Display Drivers must be installed first** see instructions [here](./../tips/display.md)

## Launch on HDMI

```bash
startx
```

## Launch on LCD

```bash
cd ~
sudo mv /usr/share/X11/xorg.conf.d/99-fbturbo.conf ~
FRAMEBUFFER=/dev/fb1 startx
```

> On logout

```bash
cd ~
sudo mv 99-fbturbo.conf /usr/share/X11/xorg.conf.d
```

[source](https://github.com/notro/fbtft/wiki#x-windows)

## Permanent on LCD

```bash
sudo nano /usr/share/X11/xorg.conf.d/99-fbturbo.conf

sudo reboot
```
