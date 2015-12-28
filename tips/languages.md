# Languages, Timezone & Keyboard

> In menu **spacebar** for select/unselect<br>
> **Enter** to validate<br>
> **Left/Right** arrow to validate/cancel

[source](http://www.tropfacile.net/doku.php/raspberry-pi/comment-passer-votre-raspberry-en-francais)

## 1. Languages

```bash
sudo raspi-config
```
- » Select **Internationalisation Options**
- » » Select **Change Locale**
- » » » Unselect **en_GB.UTF-8**
- » » » Select **fr_FR.UTF-8**
- » » » Select **fr_FR.ISO-8859-1**
- » » » » Select **fr_FR.UTF8** for default locale
- » Select **Finish** to exit
```bash
sudo reboot
```

## 2. Timezone

```bash
sudo raspi-config
```
- » Select **Internationalisation Options**
- » » Select **Change Timezone**
- » » » Select **Europe**
- » » » » Select **Paris**
- » Select **Finish** to exit
```bash
sudo reboot
```

## 3. Keyboard

#### 3.1. With Raspi Config

```bash
sudo raspi-config
```
- » Select **Internationalisation Options**
- » » Select **Change Keyboard Layout**
- » » » Select **Generic 105 Key**
- » » » » Select **Other**
- » » » » Select **French**
- » » » » » Select **French** again
- » » » » » » Select **The default for keyboard layout**
- » » » » » » » Select **No Compose Key**
- » » » » » » » » Select **No** for X Server
- » Select **Finish** to exit
```bash
sudo reboot
```

#### 3.2. Via Config Files

```bash
cd ~
sudo nano /etc/default/keyboard
XKBMODEL="pc105"
XKBLAYOUT="fr"
XKBVARIANT=""
XKBOPTIONS=""
BACKSPACE="guess"
sudo reboot
```

[source](http://raspberrypi.stackexchange.com/questions/10060/raspbian-keyboard-layout)

