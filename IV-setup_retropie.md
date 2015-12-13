# IV. Setup Retropie

## 1. Config Display & Memory

```bash
cd
sudo nano /boot/config.txt
» Change
gpu_mem_1024=256 to gpu_mem_1024=512
» Comment
#overscan_scale=1
```

## 2. Add aliases

```bash
cd
wget https://raw.githubusercontent.com/sixertoy/retrobox/master/files/.bash_aliases
sudo reboot
```

> **Take of error 503: Connection timeout when downloading file**

## 3. Configure Themes

```bash
cd
rpies (launch retropie setup)
Select setup/configuration
Select Install Themes for Emulationstation
```

- simple
- simple Dark
- nbba
- simplebigart
- clean-look

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
