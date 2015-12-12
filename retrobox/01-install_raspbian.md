[Raspberry Config file official description](https://www.raspberrypi.org/documentation/configuration/config-txt.md)

# 1. Update Raspberry OS

> Expand FS

```bash
sudo raspi-config
» Select Expand the filesystem
sudo reboot
```

> Update Packages

```bash
sudo apt-get update
sudo apt-get upgrade
sudo reboot
```

```bash
sudo rpi-update
sudo reboot
```

# 2. Change Language & Keyboard

> Clavier FR

```bash
sudo raspi-config
» Select Internationalisation Options
» Select Set keyboard layout
» Set Keyboard model : Generic 105-key (intl) PC
» Set Keyboard layout : Other
» Set Country of origin for the keyboard : French
» Set Keyboard layout : French
» Set Key to function as AltGr : The default for the keyboard layout
» Set Compose key : No compose key
» Ask for Use Control+Alt+Backspace to terminate the X server? : No
```

> Timezone

```bash
» Select Set Timezone
» Set Geographic area : Europe
» Set Time zone : Paris
```

> Language

```bash
» Select Set locale
» Set fr_FR ISO-8859-1
» Set fr_FR.UTF-8 UTF-8
» Set fr_FR.UTF-8 UTF-8 as default
sudo reboot
```

[source](http://www.tropfacile.net/doku.php/raspberry-pi/comment-passer-votre-raspberry-en-francais)

# 3. Change Console font size

```bash
sudo dpkg-reconfigure console-setup
» Select UTF8
» Select Choix automatique du jeu de caracteres adapte
» Select TerminusBold
» Select 10x20
sudo reboot
```

# 4. Overclocking & LCD Config

```bash
sudo raspi-config
» Select Overclockins
» Select RPI2
sudo reboot
```

```bash
sudo /boot/config.txt
» Change gpu_mem=256 to 512
» Change #overscan_left=16 to overscan_left=-30 (remove # behind overscan)
» Change overscan_right, overscan_top, overscan_bottom to -30
CTRL + X > Type 'o' letter > Enter
sudo reboot
```

# 5. Add aliases

```bash
wget https://raw.githubusercontent.com/sixertoy/retrobox/master/files/.bash_aliases
sudo reboot
```

# 6. Configure PS3 Controller, Themes, WIFI,  

> Install PS3 Controller

```bash
rpies (launch retropie setup)
Select setup/configuration
Select Install/Pair PS3 Controller
```

> Install Themes

```bash
rpies (launch retropie setup)
Select setup/configuration
Select Install Themes for Emulationstation
```

- simple
- simple Dark
- nbba
- simplebigart
- clean-look

> Configure WIFI

```bash
rpies (launch retropie setup)
Select setup/configuration
Select Configure WIFI
Select a Network an enter your Secret Key
sudo reboot
```

# 4. Setup Aliases & Welcome screen

```bash
rm .bashrc
wget https://raw.githubusercontent.com/sixertoy/retrobox/master/files/.bashrc
wget https://raw.githubusercontent.com/sixertoy/retrobox/master/files/.bash_aliases
sudo reboot
```

# 5. Setup Audio Output

> Switch the audio output to HDMI

```bash
amixer cset numid=3 2
```

> Switch the audio output to headphone jack

```bash
amixer cset numid=3 1
```

> Automatic switch audio

```bash
amixer cset numid=3 0
```

> If not getting audio via HDMI

```bash
sudo nano /boot/config.txt
» hdmi_drive=2
```


