# 10. Install Retropie

```bash
cd
wget https://github.com/RetroPie/RetroPie-Setup/archive/3.2.1.tar.gz
tar -zxvf RetroPie-Setup-3.2.1.tar.gz
rm 3.2.1.tar.gz
mv RetroPie-Setup-3.2.1 RetroPie-Setup
cd RetroPie-Setup
chmod +x retropie_setup.sh
sudo ./retropie_setup.sh
» Install Emulationstation (5 | 307) [Binary]
» Install Retroarch (5 | 124) [Binary]
» Install Emulators
reboot
cd ~/RetroPie-Setup
sudo ./retropie_setup.sh
» Configure Samba shares (3 | 323) [Install]
» Install XBOX Controller Driver
» Install Themes
```

#### Emulators

- Snes9x (5 | 128) [Binary]
- pisnes  (5 | 121) [Binary]
 
#### Themes

- simple
- simple-dark
- nbba
- simplebigart
- clean-look

#### [BIOS](https://github.com/RetroPie/RetroPie-Setup/wiki/BIOS-setup-for-RetroPie)

- gba /home/pi/RetroPie/BIOS/gba_bios.bin
- psx /home/pi/RetroPie/BIOS/SCPH1001.BIN
