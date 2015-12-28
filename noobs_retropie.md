# NOOBS + Retropie

## Requirements

- **Do not plug** power cable
- Plug HDMI Cable
- Plug RJ45 Ethernet cable
- Plug USB/Bluetooth Keyboard/Mouse or set a SSH Connection
- Plug WIFI & Bluetooth keys (optionnal)

## 1. Setup Jessie + Retropie Image

#### 1.1. Setup Jessie

###### 1.1.1. Prepare SDCard

> Download [Raspbian Jessie Lite Version](https://www.raspberrypi.org/downloads/raspbian/)

> Format SDCard
  - Use [SDFormatter](https://www.sdcard.org/downloads/formatter_4/eula_windows/index.html) on Windows, see instructions [here](./softwares/sdformatter.md)
  - Use Disk Util on Mac OS

###### 1.1.2. Burn Raspbian Jessie Lite on sdcard

> Extract Raspbian Jessie Lite zip archives<br>

> Burn Raspbian Jessie Lite img on sdcard
  - Use [Win32DiskImager](http://sourceforge.net/projects/win32diskimager/) on windows, see instruction [here](./softwares/win32diskimager.md)
  - Use [ApplePi Baker](http://www.tweaking4all.com/hardware/raspberry-pi/macosx-apple-pi-baker/) on Mac OS

#### 1.2. Start your RPi

> Put your sdcard in your RPi<br>
> Plug power cable in your RPi<br>
> Raspbian starts in qwerty mode, by default<br>
> type ***rqspi°config*** instead of raspi-config<br>
> **Default Raspbian user/password:** pi/raspberry

#### 1.3. Configure Sytem

> **Before any operations:**<br>
> Expand Filesystem

```bash
cd ~
sudo raspi-config
» Select Expand Filesystem
sudo reboot
```

###### 1.3.1. Install Packages

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

###### 1.3.2. Configure Languages & Keyboard

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

###### 1.3.3. Install Autologin

> See instructions [here](./tips/autologin.md#rasbian-jessie) for Raspbian Jessie

###### 1.3.4. Install Bash Aliases

```bash
cd ~
wget https://raw.githubusercontent.com/sixertoy/retrobox/master/files/.bash_aliases
```

###### 1.3.5. Install Welcome Tweaks (Optional)

> See instructions [here](./tips/welcome_tweaks.md)

###### 1.3.6. Configure WIFI (Optional)

> See instructions [here](./tips/wifi.md#Setup)

#### 1.4. Install FBCP

> FBCP mirroring HDMI stream to a LCD Display<br>
> See instructions [here](./displays/FBCP.md#1-install) to install it<br>
> **Do not set it to autostart at boot**

#### 1.5. Install LCD Display Drivers

> For Tontec 3.5, see instructions [here](./displays/tontec35.md)
> Add [Boot Console at startup](./displays/tontec35.md#2-console-on-boot)

#### 1.6. Install Retropie

> **After installing Retropie** you need to upgrade gpu_mem_1024 in /boot/config.txt to 448<br>
> Retropie has modified it

[source](https://github.com/RetroPie/RetroPie-Setup/wiki/First-Installation)

###### 1.6.1. Install from Sources

```bash
cd ~
git clone --depth=1 https://github.com/RetroPie/RetroPie-Setup.git
cd RetroPie-Setup
sudo ./retropie_setup.sh
sudo reboot
```

[source](https://github.com/RetroPie/RetroPie-Setup#general-usage)

###### 1.6.2. Install Emulators

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

###### 1.6.3. Install Themes & Drivers

```bash
cd ~
rpies
```

```bash
sudo reboot
```

> Fix /boot/config.txt gpu_mem_1024

#### 1.7. Install Retrobox Script

##### 1.7.1. Install from sources

```bash
cd ~
wget https://raw.githubusercontent.com/sixertoy/retrobox/master/files/retrobox
sudo mv retrobox /usr/bin
sudo chmod 0777 /usr/bin/retrobox
sudo reboot
```

##### 1.7.2 Update emulationstation script

```bash
cd ~
wget https://raw.githubusercontent.com/sixertoy/retrobox/master/files/emulationstation
sudo mv emulationstation /usr/bin
sudo chmod 0777 /usr/bin/retrobox
sudo reboot
```

##### 1.6.2. Autostart at Boot

## 2. NOOBS




