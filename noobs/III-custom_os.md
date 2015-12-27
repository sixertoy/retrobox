# III - Custom OS Retrobox

> **Eject SDCard & plug it on your RPi**<br>
> Needs a keyboard to be plugged in rpi<br>
> Or a RJ45 plugged with an SSH connection<br>
> **At first startup RPi is setted in Qwerty mode**<br>
> **Use pi/raspbery for user login/password (pi/rqspberry)**

## 1. Configure system

```bash
cd ~
sudo raspi-config (sudo rqspi°config)
expand file system
perform reboot
cd ~
sudo raspi-config
setup international language
setup timezone
setup keyboard
sudo reboot
```

## 2. Setup WIFI

> Edit /etc/wpa_supplicant/wpa_supplicant.conf<br>
> Add your network

```bash
cd ~
sudo nano /etc/wpa_supplicant/wpa_supplicant.conf
network={
id_str=""
ssid=""
psk=""
}
sudo reboot
```

## 3. Autologin to you RPi at Startup

> You can now connect with SSH via wifi<br>
> Install autologin script

```bash
cd ~
wget https://raw.githubusercontent.com/sixertoy/retrobox/master/files/autologin.conf
mv autologin.conf /etc/systemd/system/getty@tty1.service.d/
sudo systemctl enable getty@tty1.service
sudo reboot
```

> **Or you can create and edit autologin script via SSH**

```bash
cd ~
sudo nano /etc/systemd/system/getty@tty1.service.d/autologin.conf
[Service]
ExecStart=
ExecStart=-/sbin/agetty --autologin pi --noclear %I 38400 linux
sudo systemctl enable getty@tty1.service
sudo reboot
```

## 4. Add Custom aliases

> can be done via SSH

```bash
cd ~
wget https://raw.githubusercontent.com/sixertoy/retrobox/master/files/.bash_aliases
```

> **Or edit you can edit existing .bashrc via SSH**

```bash
cd ~
sudo nano .bash_aliases
alias ll='ls -lA'
alias ds='df -h'
sudo reboot
```

## 5. Welcome Tweaks at Startup

> Copy content from file https://raw.githubusercontent.com/sixertoy/retrobox/master/files/.bashrc<br>
> At the end of the existing file /home/pi/.bashrc (~/.bashrc)

## 6. Install Packages

### 6.1. Install GIT

> Git is a versionning tools

```bash
cd ~
sudo apt-get install -y git dialog
```

### 6.2. Install CMake

> CMake build some packages based on the current system configuration

```bash
cd ~
sudo apt-get install -y cmake
```

### 6.3. Install FBCP (Framebuffer Copy)

> FBCP streams output from HDMI port to a GPIO LCD Display

#### 6.3.1 Install FBCP sources from git repository

```bash
cd ~
git clone https://github.com/tasanakorn/rpi-fbcp
cd rpi-fbcp/
mkdir build
cd build/
cmake ..
make
sudo mkdir /usr/local/bin (may already exists)
sudo install fbcp /usr/local/bin/fbcp
sudo reboot
```

#### 6.3.2. Install FBCP's script launcher

```bash
cd ~
sudo wget -O /etc/init.d/fbcp https://raw.githubusercontent.com/sixertoy/retrobox/master/files/fbcp
sudo chmod +x /etc/init.d/fbcp
sudo reboot
```
