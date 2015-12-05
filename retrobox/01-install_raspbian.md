# 1. Install Raspbian

[Raspberry Config file official description](https://www.raspberrypi.org/documentation/configuration/config-txt.md)

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

> Timezone

```bash
sudo raspi-config
» Select Set Timezone
» Set Geographic area : Europe
» Set Time zone : Paris
```

> Language

```bash
sudo raspi-config
» Select Set locale
» Set fr_FR ISO-8859-1
» Set fr_FR.UTF-8 UTF-8
» Set fr_FR.UTF-8 UTF-8 as default
sudo reboot
```

[source](http://www.tropfacile.net/doku.php/raspberry-pi/comment-passer-votre-raspberry-en-francais)

> Auto Login

```bash
sudo nano /etc/inittab
» #1:2345:respawn:/sbin/getty 115200 tty1
» 1:2345:respawn:/bin/login -f pi tty1 </dev/tty1 >/dev/tty1 2>&1
sudo reboot
```

[source](http://www.opentechguides.com/how-to/article/raspberry-pi/5/raspberry-pi-auto-start.html)

# 2. Install Wifi

> list available network

```bash
sudo iwlist wlan0 scan
```

> Edit conf

```bash
sudo nano /etc/wpa_supplicant/wpa_supplicant.conf
» network={
» ssid="The_ESSID_from_earlier"
» psk="Your_wifi_password"
» }
```

> Restart Wifi or reboot

```bash
sudo ifdown wlan0
sudo ifup wlan0
```

> Test wifi

```bash
ifconfig wlan0
```

```bash
sudo reboot
```

> Disconnect cable<br>
> You can now be SSH connect via Wifi

[source](https://www.raspberrypi.org/documentation/configuration/wireless/wireless-cli.md)

# 3. Change Console font size

```bash
sudo nano /etc/default/console-setup
» FONTFACE="TerminusBold"
» FONTSIZE="10x20"
sudo /etc/init.d/console-setup restart
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


