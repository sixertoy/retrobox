# NOOBS + Retropie

## 0. Requirements

- Do not plug power cable
- Plug HDMI Cable
- Plug RJ45 Ethernet cable
- Plug USB/Bluetooth Keyboard/Mouse

## 1. Prepare SDCard

> Download [Raspbian Jessie Lite Version](https://www.raspberrypi.org/downloads/raspbian/)

> Format SDCard
  - Use [SDFormatter](https://www.sdcard.org/downloads/formatter_4/eula_windows/index.html) on Windows, see instructions [here](./softwares/sdformatter.md)
  - Use Disk Util on Mac OS

## 2. Burn Raspbian Jessie Lite on sdcard

> Extract Raspbian Jessie Lite zip archives<br>

> Burn Raspbian Jessie Lite img on sdcard
  - Use [Win32DiskImager](http://sourceforge.net/projects/win32diskimager/) on windows, see instruction [here](./softwares/win32diskimager.md)
  - Use [ApplePi Baker](http://www.tweaking4all.com/hardware/raspberry-pi/macosx-apple-pi-baker/) on Mac OS

## 3. Start your RPi

> Put your sdcard on your RPi<br>
> Plug power cable to your RPi<br>

## 4. Udpate Sytem

> **Before any operations:**<br>
- Expand file system - see instruction [here](./tips/update_system.md)

## 5. Configure Languages & Keyboard

> In qwerty mode, by default<br>
> type ***rqspi°config*** instead of raspi-config<br>
> see instruction [here](./tips/locales.md) and [here](./tips/locales.md#32-via-config-files) for keyboard layout

## 6. Install Bash Aliases

> See instructions [here](./tips/aliases.md)

## 7. Install Welcome Tweaks

> See instructions [here](./tips/welcome_tweaks.md)

## 8. Configure WIFI (Optional)

> See instructions [here](./tips/wifi.md#Setup)

## 9. Install LCD Display Drivers

> For Tontec 3.5, see instructions [here](./displays/tontec35.md)

## 10. Install Retropie

#### 10.4. Install Retrobox Script

```bash
cd ~
wget https://raw.githubusercontent.com/sixertoy/retrobox/master/files/retrobox
sudo mv retrobox /usr/bin
sudo chmod 0777 /usr/bin/retrobox
sudo reboot
```
