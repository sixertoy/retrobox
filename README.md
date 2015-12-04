# Install from a Wheezy blank image

## 1. Expand FS
```bash
sudo raspi-config
» Select Expand the filesystem
sudo reboot
```

## 2. Change locales

1. Clavier FR
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

2. Language
```bash
sudo raspi-config
» Select Set locale
» Unset en_GB.UTF-8 UTF-8
» Set fr_FR ISO-8859-1
» Set fr_FR.UTF-8 UTF-8
» Set UTF-8 as default
```

3. Timezone
```bash
sudo raspi-config
» Select Set Timezone
» Set Geographic area : Europe
» Set Time zone : Paris
```

## 3. Update Packages
```bash
sudo apt-get update
sudo apt-get upgrade
sudo rpi-update
sudo reboot
```

## 4. Install tweaks

> Show Wheezy version

```bash
sudo apt-get install lsb-release
» lsb_release -a
```

> Welcome Script

```bash
Copy bash_welcome_script inside ~/.bashrc
```


