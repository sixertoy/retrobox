# Tontec 3.5 LCD Screen

> Tontec 3.5 LCD Screen is perfect for retrogaming due to it's 128Mhz frequency rendering<br>

> [Tontec 3.5 on Amazon](http://www.amazon.fr/dp/B00OFLKPG4)<br>
> [Official Manufacturer](http://www.itontec.com/product-detail/product-name-9/)<br>

> **Before any operations:**<br>
> Expand filesystem & Update packages - see instructions [here](./../tips/_update_system.md)

## 1. Configure Driver

> Edit /boot/config.txt

```bash
cd ~
sudo nano /boot/config.txt
dtparam=spi=on
dtoverlay=mz61582-overlay.dtb
sudo reboot
```

## 2. Console on boot

> Edit /boot/cmdline.txt<br>
> Put at the end of the line

```bash
cd ~
sudo nano /boot/cmdline.txt
fbcon=map:10 fbcon=font:ProFont6x11
sudo reboot
```

## Backlight

### Turn Off

```bash
echo 1 | sudo tee /sys/class/backlight/*/bl_power
```

### Turn On

```bash
echo 0 | sudo tee /sys/class/backlight/*/bl_power
```

[source](https://github.com/notro/fbtft/wiki/Backlight)
