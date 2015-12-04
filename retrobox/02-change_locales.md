# 2. Change locales

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
```

```bash
sudo reboot
```

[source](http://www.tropfacile.net/doku.php/raspberry-pi/comment-passer-votre-raspberry-en-francais)
