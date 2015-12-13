# IV. Setup Retropie

## 1. Config Display & Memory

```bash
cd
sudo /boot/config.txt
» Change
gpu_mem_1024=xxx to 512
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
wget https://raw.githubusercontent.com/sixertoy/retrobox/master/files/.bash_aliases
sudo reboot
```

## 3. Configure PS3 Controller, Themes

> Install PS3 Controller

```bash
rpies (launch retropie setup)
Select setup/configuration
Select Install/Pair PS3 Controller
```

> Install Themes

```bash
rpies (launch retropie setup)
Select setup/configuration
Select Install Themes for Emulationstation
```

- simple
- simple Dark
- nbba
- simplebigart
- clean-look

