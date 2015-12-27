# Waveshare 3.5 LCD on RPi

> Waveshare 3.5 LCD Screen is too weak for retrogaming due to it's 16Mhz frequency rendering<br>
> But it works with X Window Desktop System<br>

> [Waveshare 3.5 on Amazon](http://www.amazon.fr/dp/B00SKOPWC4)<br>
> [Official Manufacturer](http://www.waveshare.com/3.5inch-rpi-lcd-a.htm)

> **Before any operations:**
    - Expand file system - see instruction [here]()
    - Update your system - see instruction [here]()

## 1. Install Drivers

```bash
cd ~
git clone https://github.com/swkim01/waveshare-dtoverlays.git
sudo cp waveshare-dtoverlays/waveshare35a-overlay.dtb /boot/overlays/
```

## 2. Configure Driver

> Edit /boot/config.txt

```bash
cd ~
sudo nano /boot/config.txt
dtparam=spi=on
dtoverlay=waveshare35a-overlay.dtb
sudo reboot
```

## 3. Console on boot

> Edit /boot/cmdline.txt<br>
> Put at the end of the line

```bash
cd ~
sudo nano /boot/cmdline.txt
fbcon=map:10 fbcon=font:ProFont6x11
sudo reboot
```
