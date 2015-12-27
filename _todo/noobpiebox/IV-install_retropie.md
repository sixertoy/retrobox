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
sudo sh ./retropie_setup.sh
```

### 1.2. Install Emulators from retropie setup (rpies)

> **From rpies main menu**<br>
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

### 1.3. Install Tools from retropie setup (rpies)

```bash
rpies
```

#### 1.3.1. Install themes for emulationstation

> **From rpies main menu**

> Select
  - Setup/Configuration ()

> Select
  - ()
  
> Select
  - clean-look ()

#### 1.3.2. Samba shares

> **From rpies main menu**

> Select
  -
  
> Select
  -
  
> Select
  -

```bash
sudo reboot
```

> **You can now copy ROMS & BIOS via your pc explorer in network menu to your RPi**
