# NOOBS + Retropie

## Requirements

- **Do not plug** power cable
- Plug HDMI Cable
- Plug RJ45 Ethernet cable
- Plug USB/Bluetooth Keyboard/Mouse or set a SSH Connection
- Plug WIFI & Bluetooth keys (optionnal)

## 1 Setup Jessie + Retropie Image

#### 1.1 Setup Raspbain Jessie

###### 1.1.1 Prepare SDCard

> Download [Raspbian Jessie Lite Version](https://www.raspberrypi.org/downloads/raspbian/)

> Format SDCard
  - Use [SDFormatter](https://www.sdcard.org/downloads/formatter_4/eula_windows/index.html) on Windows, see instructions [here](./softwares/sdformatter.md)
  - Use Disk Util on Mac OS

###### 1.1.2 Burn Raspbian Jessie Lite on sdcard

> Extract Raspbian Jessie Lite zip archives<br>

> Burn Raspbian Jessie Lite img on sdcard
  - Use [Win32DiskImager](http://sourceforge.net/projects/win32diskimager/) on windows, see instruction [here](./softwares/win32diskimager.md)
  - Use [ApplePi Baker](http://www.tweaking4all.com/hardware/raspberry-pi/macosx-apple-pi-baker/) on Mac OS

#### 1.2 Start your RPi

> Put your sdcard in your RPi<br>
> Plug power cable in your RPi<br>
> Raspbian starts in qwerty mode, by default<br>
> type ***rqspi°config*** instead of raspi-config<br>
> **Default Raspbian user/password:** pi/raspberry

#### 1.3 Configure Sytem

> **Before any operations:**<br>
> Expand Filesystem

```bash
cd ~
sudo raspi-config
» Select Expand Filesystem
sudo reboot
```

###### 1.3.1 Install Packages

> Update System

```bash
cd ~
sudo apt-get update -y
sudo apt-get upgrade -y
sudo reboot
```

> Install additionnals packages

```bash
cd ~
sudo apt-get install -y git dialog cmake
sudo reboot
```

###### 1.3.2 Configure Languages & Keyboard

> **Quick setup for keyboard**

```bash
cd ~
sudo nano /etc/default/keyboard
XKBMODEL="pc105"
XKBLAYOUT="fr"
XKBVARIANT=""
XKBOPTIONS=""
BACKSPACE="guess"
```

> Setup Timezone and Language<br>
> Full instructions with raspi-config [here](./tips/locales.md)

```bash
sudo reboot
```

###### 1.3.3 Install Autologin

> See instructions [here](./tips/autologin.md#rasbian-jessie) for Raspbian Jessie

###### 1.3.4 Install Bash Aliases

```bash
cd ~
wget https://raw.githubusercontent.com/sixertoy/retrobox/master/files/.bash_aliases
```

###### 1.3.5 Install Welcome Tweaks (Optional)

> See instructions [here](./tips/welcome_tweaks.md)

###### 1.3.6 Configure WIFI (Optional)

> See instructions [here](./tips/wifi.md#Setup)

#### 1.4 Install FBCP

> FBCP mirroring HDMI stream to a LCD Display<br>
> 
> See instructions [here](./displays/FBCP.md#1-install) to install it<br>
> **Do not set it to autostart at boot**

#### 1.5 Install LCD Display Drivers

> Install drivers for Tontec 3.5, see instructions [here](./displays/tontec35.md)<br>

#### 1.6 Install Retropie

[source](https://github.com/RetroPie/RetroPie-Setup/wiki/First-Installation)

###### 1.6.1 Install from Sources

```bash
cd ~
git clone --depth=1 https://github.com/RetroPie/RetroPie-Setup.git
cd RetroPie-Setup
sudo ./retropie_setup.sh
sudo reboot
```

[source](https://github.com/RetroPie/RetroPie-Setup#general-usage)

###### 1.6.2 Install Emulators

> **Install all emulators from binary**<br>

```bash
cd ~
rpies
```

> Select **Install individual emulators** (4)<br>
> Select:
  - **Emulationstation** (306)
  - **Retroarch** (125)
  - mupen64plus **(N64)** (116)
  - ppsspp **(PSP)** (122)
  - reicast **(Dreamcast)** (124)
  - lr-fba-next **(Final Burn - Arcade)** (207)
  - lr-genesis-plus-gx **(Sega MS + MD)** (213)
  - lr-mgba **(GBA)** (223)
  - lr-nestopia **(NES)** (225)
  - lr-pcsx-rearmed **(PSX)** (228)
  - lr-SNES9x-Next **(SNES)** (234)

```bash
sudo reboot
````

###### 1.6.3 Install Themes & Drivers

```bash
cd ~
rpies
```

> Select **Setup/Configuration** (3)<br>
  - Select **Install themes for emulationstation** (307)<br>
  - Select **clean-look** (12)

> From **Setup/Configuration** menu<br>
  - Select **Configure Samba ROM Share** (318)<br>
  - Select **Install Retropie Samba Shares**

```bash
sudo reboot
```

#### 1.7 Install Retrobox Script

##### 1.7.1 Install retrobox script

```bash
cd ~
wget https://raw.githubusercontent.com/sixertoy/retrobox/master/files/retrobox
sudo mv retrobox /usr/bin
sudo chmod 0777 /usr/bin/retrobox
```

##### 1.7.2 Update emulationstation script

```bash
cd ~
wget https://raw.githubusercontent.com/sixertoy/retrobox/master/files/emulationstation
sudo mv emulationstation /usr/bin
sudo chmod 0777 /usr/bin/emulationstation
```

##### 1.7.3 Install autostart script

```bash
cd ~
wget https://raw.githubusercontent.com/sixertoy/retrobox/master/files/99-retrobox_autotart.sh
sudo mv 99-retrobox_autotart.sh /etc/profile.d/
```

```bash
sudo reboot
```

#### 1.8 Configure Boot

###### 1.8.1. /boot/config.txt

```bash
cd ~
sudo nano /boot/config.txt
gpu_mem_1024=448
overscan_scale=1
overscan_top=-30
overscan_left=-30
overscan_right=-30
overscan_bottom=-30
```

###### 1.8.2. /boot/cmdline.txt

```bash
sudo nano /boot/cmdline.txt
# add at the end of the line
quiet logo.nologo fbcon=map:10 fbcon=font:ProFont6x11
```

```bash
sudo reboot
```

## 2. NOOBS




