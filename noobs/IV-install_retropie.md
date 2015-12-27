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
sudo chmod +x retropie_setup.
sudo sh ./retropie_setup.sh
```

### 1.2. Install Emulators

> **Install all emulators form binary**<br>
> Select *Install individuals emulators*

- Emulationstation
- Retroarch
- mupen64plus (N64)
- lr-pcsx-rearmed (PSX)
- reicast (Dreamcast)
- lr-SNES9x-Next (SNES)
- lr-mgba (GBA)
- lr-genesis-plus-gx (Sega MS + MD)
- lr-nestopia (NES)
- ppsspp (PSP)
- lf-fba-next (Final Burn - Arcade)


```bash
sudo reboot
````

### 1.3. Install Tools

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
