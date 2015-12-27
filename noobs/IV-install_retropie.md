# IV - Install Retropie

> Retropie pacakge tools for retrograming:
- [Emulationstation](http://www.emulationstation.org) a gui for retroarch
- [Retroarch](http://www.libretro.com) is an emulators engines
- And others...

## 1. Install retropie

### 1.1. Install sources

```bash
cd ~
git clone --depth=1 https://github.com/RetroPie/RetroPie-Setup.git
cd RetroPie-Setup
sudo chmod +x ./retropie_setup.sh
```

> Launch Retropie Setup

```bash
sh ./retropie_setup.sh
```

### 1.2. Install Emulators from retropie setup

> **Install all emulators fromm binary**<br>
> Select
  - Install individual emulators from binary or source (4)

> Select:
  - Emulationstation (306)
  - Retroarch (125)
  - mupen64plus **(N64)** (116)
  - lr-pcsx-rearmed **(PSX)** (228)
  - reicast **(Dreamcast)** (124)
  - lr-SNES9x-Next **(SNES)** (234)
  - lr-mgba **(GBA)** (223)
  - lr-genesis-plus-gx **(Sega MS + MD)** (213)
  - lr-nestopia **(NES)** (225)
  - ppsspp **(PSP)** (122)
  - lf-fba-next **(Final Burn - Arcade)** (207)

```bash
sudo reboot
````

### 1.3. Install Tools from retropie setup

```bash
rpies
```

#### 1.3.1. Install themes for emulationstation

- clean-look

#### 1.3.2. Samba shares



> **install chromium [Optional]**

- sudo apt-get install chromium

# NOOBS

## Make root file

- cd /
- sudo tar -cvpf root.tar /* --exclude=proc/* --exclude=sys/* --exclude = dev/pts/*
- sudo xz  -9  -e  root.tar

## Make boot file

- cd /boot
- sudo tar -cvpf boot.tar /*
- sudo xz  -9  -e  boot.tar

## Get file over ssh

- scp pi@<rpi_ip_adress>:root.tar.xz ~/Downloads
- scp pi@<rpi_ip_adress>:boot.tar.xz ~/Downloads

## Config boot


- in os/ replace root.tar.xz
- in os/ replace boot.tar.xz
