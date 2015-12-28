# Raspbian

## Requirements

- **Do not plug** power cable
- Plug HDMI Cable
- Plug RJ45 Ethernet cable
- Plug USB/Bluetooth Keyboard/Mouse or set a SSH Connection
- Plug WIFI & Bluetooth keys (optional)

## 1. Prepare SDCard

> Download [Raspbian Wheezy Version](https://www.raspberrypi.org/downloads/raspbian/)

> Format SDCard
  - Use [SDFormatter](https://www.sdcard.org/downloads/formatter_4/eula_windows/index.html) on Windows, see instructions [here](./softwares/sdformatter.md)
  - Use Disk Util on Mac OS

## 2. Burn Raspbian Wheezy on sdcard

> Extract raspbian wheezy zip archives<br>

> Burn raspbian wheezy img on sdcard
  - Use [Win32DiskImager](http://sourceforge.net/projects/win32diskimager/) on windows, see instruction [here](./softwares/win32diskimager.md)
  - Use [ApplePi Baker](http://www.tweaking4all.com/hardware/raspberry-pi/macosx-apple-pi-baker/) on Mac OS

## 3. Start your RPi

> Put your sdcard on your RPi<br>
> Plug power cable to your RPi<br>

## 4. Udpate Sytem

> **Before any operations:**<br>
- Expand filesystem & Update system - see instruction [here](./tips/update_system.md)

## 5. Configure Locales

> In qwerty mode, by default<br>
> type ***rqspi°config*** instead of raspi-config<br>
> see instruction [here](./tips/locales.md)

> **Quick setup for keyboard**

```bash
cd ~
sudo nano /etc/default/keyboard
XKBMODEL="pc105"
XKBLAYOUT="fr"
XKBVARIANT=""
XKBOPTIONS=""
BACKSPACE="guess"
sudo reboot
```

## 6. Enable autologin

> See instructions [here](./tips/autologin.md)

## 7. Install Welcome Tweaks

> See instructions [here](./tips/welcome_tweaks.md)

## 8. Configure WIFI (Optional)

> See instructions [here](./tips/wifi.md#Setup)

## 9. Use LCD Display

#### 9.1. Install LCD Display Driver

> For Tontec 3.5, see instructions [here](./displays/tontec35.md)<br>
> For Waveshare 3.5, see instructions [here](./displays/waveshare35a.md)<br>

#### 9.2. Setup Console

```bash
cd ~
sudo nano /boot/cmdline.txt
fbcon=map:10 fbcon=font:ProFont6x11
sudo reboot
```

#### 9.3. Setup For X Window

```bash
cd ~
sudo mkdir -p /etc/X11/xorg.conf.d/
sudo wget https://raw.githubusercontent.com/sixertoy/retrobox/master/files/fbtft.conf
sudo mv ~/fbtft.conf /etc/X11/xorg.conf.d/
```

