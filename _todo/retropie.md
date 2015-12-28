# Retropie

## 0. Requirements

- Do not plug power cable
- Plug HDMI Cable
- Plug RJ45 Ethernet cable
- Plug USB/Bluetooth Keyboard/Mouse

## 1. Prepare SDCard

> Download [Retropie Image](http://blog.petrockblock.com/retropie/retropie-downloads/)

> Format SDCard
  - Use [SDFormatter](https://www.sdcard.org/downloads/formatter_4/eula_windows/index.html) on Windows, see instructions [here](./sdformatter.md) [here](https://github.com/sixertoy/retrobox/blob/master/softwares/sdformatter.md)
  - Use Disk Util on Mac OS

## 2. Burn Retropie on sdcard

> Extract Retropie zip archives<br>

> Burn Retropie img on sdcard
  - Use [Win32DiskImager](http://sourceforge.net/projects/win32diskimager/) on windows, see instruction [here](./win32diskimager.md)
  - Use [ApplePi Baker](http://www.tweaking4all.com/hardware/raspberry-pi/macosx-apple-pi-baker/) on Mac OS

## 3. Start your RPi

> Put your sdcard on your RPi<br>
> Plug power cable to your RPi<br>

## 4. Udpate Sytem

> **Before any operations:**<br>
- Expand file system & Update your system - see instruction [here](./../tips/update_system.md)

## 5. Configure Languages & Keyboard

> In qwerty mode, by default<br>
> type ***rqspi°config*** instead of raspi-config<br>
> see instruction [here](./../tips/languages.md)

## 6. Enable autologin

> See instructions [here](./../tips/autologin.md)

## 7. Install Welcome Tweaks

> See instructions [here](./../tips/welcome_tweaks.md)

## 8. Configure WIFI (Optional)

> See instructions [here](./../tips/wifi.md#Setup)

## 9. Use LCD Display

#### 9.1. Install LCD Display Driver

> For Tontec 3.5, see instructions [here](./../displays/tontec35.md)<br>

#### 9.2. Install FBCP

> Install FBCP as a Service, see instructions [here]()

#### 9.2. Setup Console

```bash
cd ~
sudo nano /boot/cmdline.txt
fbcon=map:10 fbcon=font:ProFont6x11
sudo reboot
```
