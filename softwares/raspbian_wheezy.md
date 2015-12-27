# Raspbian

## 0. Requirements

- Do not plug power cable
- Plug HDMI Cable
- Plug RJ45 Ethernet cable
- Plug USB/Bluetooth Keyboard/Mouse

## 1. Prepare SDCard

> Download [Raspbian Wheezy Version](https://www.raspberrypi.org/downloads/raspbian/)

> Format SDCard
  - Use [SDFormatter](https://www.sdcard.org/downloads/formatter_4/eula_windows/index.html) on Windows, see instructions [here](./sdformatter.md) [here](https://github.com/sixertoy/retrobox/blob/master/softwares/sdformatter.md)
  - Use Disk Util on Mac OS

## 2. Burn Raspbian Wheezy on sdcard

> Extract raspbian wheezy zip archives<br>

> Burn raspbian wheezy img on sdcard
  - Use [Win32DiskImager](http://sourceforge.net/projects/win32diskimager/) on windows, see instruction [here](./win32diskimager.md)
  - Use [ApplePi Baker](http://www.tweaking4all.com/hardware/raspberry-pi/macosx-apple-pi-baker/) on Mac OS

## 3. Start your RPi

> Put your sdcard on your RPi<br>
> Plug power cable to your RPi<br>

## 4. Udpate Sytem

> **Before any operations:**
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

## 9. Launch X Window (Optional)

> see instructions [here](./x_window.md)
