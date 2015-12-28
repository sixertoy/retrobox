# II. Setup & Configuration

# IV. Setup Retropie

## 4. Configure PS3 Controller

> Requires a Bluetooth Key<br>
> Connect PS3 Controller to RPi USB

```bash
cd
rpies (launch retropie setup)
Select setup/configuration
Select Install/Pair PS3 Controller
```

> Once installed<br>
> Disconnect PS3 Controller form USB<br>
> Press Playstation Key on PS3 Controller<br>
> Your PS3 Controller is now connected


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
