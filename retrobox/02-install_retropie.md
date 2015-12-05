# 2. Install Retropie

```bash
sudo nano /boot/config.txt
gpu_mem=944
```

[source](https://www.raspberrypi.org/documentation/configuration/config-txt.md)

```bash
cd
wget https://github.com/RetroPie/RetroPie-Setup/archive/3.2.1.tar.gz
tar -zxvf 3.2.1.tar.gz
rm 3.2.1.tar.gz
mv RetroPie-Setup-3.2.1 RetroPie-Setup
cd RetroPie-Setup
chmod +x retropie_setup.sh
sudo ./retropie_setup.sh
» Install Emulationstation (5 | 307) [Binary]
» Install Retroarch (5 | 124) [Binary]
» Install Emulators
reboot
```

#### Emulators

- Snes9x - SNES Emulator SNES9X-RPi (5 | 128) [Binary]

```bash
cd ~/RetroPie-Setup
sudo ./retropie_setup.sh
» Install Themes (3 | 308) [Install]
» Configure Samba shares (3 | 323) [Install]
```

> Install XBOX Controller Driver

```bash
sudo apt-get install xboxdrv
```
 
#### Themes

- simple
- simple-dark
- nbba
- simplebigart
- clean-look

```bash
reboot
```

> Connect to samba and copy BIOS

#### [BIOS](https://github.com/RetroPie/RetroPie-Setup/wiki/BIOS-setup-for-RetroPie)

- gba /home/pi/RetroPie/BIOS/gba_bios.bin
- psx /home/pi/RetroPie/BIOS/SCPH1001.BIN