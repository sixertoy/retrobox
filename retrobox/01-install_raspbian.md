# 1. Install Raspbian

> Expand FS

```bash
sudo raspi-config
» Select Expand the filesystem
sudo reboot
```

> Clavier FR

```bash
sudo raspi-config
» Select Set keyboard layout
» Set Keyboard model : Generic 105-key (intl) PC
» Set Keyboard layout : Other
» Set Country of origin for the keyboard : French
» Set Keyboard layout : French
» Set Key to function as AltGr : The default for the keyboard layout
» Set Compose key : No compose key
» Ask for Use Control+Alt+Backspace to terminate the X server? : No
```

> Language

```bash
sudo raspi-config
» Select Set locale
» Unset en_GB.UTF-8 UTF-8
» Set fr_FR ISO-8859-1
» Set fr_FR.UTF-8 UTF-8
» Set UTF-8 as default
```

> Timezone

```bash
sudo raspi-config
» Select Set Timezone
» Set Geographic area : Europe
» Set Time zone : Paris
reboot
```

[source](http://www.tropfacile.net/doku.php/raspberry-pi/comment-passer-votre-raspberry-en-francais)

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

> Auto Login

```bash
sudo nano /etc/inittab
» #1:2345:respawn:/sbin/getty 115200 tty1
» 1:2345:respawn:/bin/login -f pi tty1 </dev/tty1 >/dev/tty1 2>&1
sudo reboot
```

[source](http://www.opentechguides.com/how-to/article/raspberry-pi/5/raspberry-pi-auto-start.html)


2. Install LCD
3. Install Wifi
4. Install Retropie
4. Install Aliases


