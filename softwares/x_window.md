# X Window Desktop on RPi

> A GUI for Raspbian OS like Windows or Mac OS<br>
> **Display Drivers must be installed first** see instructions [here](./../tips/display.md)

## Launch on HDMI

```bash
startx
```

## Launch on LCD

```bash
FRAMEBUFFER=/dev/fb1 startx
```

[source](https://github.com/notro/fbtft/wiki/Framebuffer-use#x-server)
