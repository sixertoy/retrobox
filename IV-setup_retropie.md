# IV. Setup Retropie

## 1. Config Display & Memory

```bash
cd
sudo /boot/config.txt
» Change
gpu_mem_1024=256 to gpu_mem_1024=448
» Change
oversan_scale=1 to oversan_scale=0


» At the last line of the file
hdmi_force_hotplug=1
overscan_top=-30
overscan_left=-30
overscan_right=-30
overscan_bottom=-30
» Press CTRL+X to save & quit (overwrite=yes and enter to validate filename)
sudo reboot
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
