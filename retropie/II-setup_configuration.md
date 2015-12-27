# II. Setup & Configuration

[Raspberry Config file official description](https://www.raspberrypi.org/documentation/configuration/config-txt.md)

## 1. Update Raspberry OS

> Expand FS

```bash
sudo raspi-config
» Select Expand the filesystem
sudo reboot
```

> Update Packages

```bash
sudo apt-get update
sudo apt-get upgrade (Y if prompted)
sudo reboot
```

```bash
sudo rpi-update
sudo reboot
```

## 2. Change Language & Keyboard

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

## 3. Change Console font size

```bash
sudo dpkg-reconfigure console-setup
» Select UTF8
» Select Choix automatique du jeu de caracteres adapte
» Select TerminusBold
» Select 16x32
sudo reboot
```



[**NEXT - Setup LCD Display**](./III-setup_lcd_display.md)
