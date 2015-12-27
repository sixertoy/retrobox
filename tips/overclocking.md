# Overclocking

## Via Raspi Config

```bash
cd ~
sudo raspi-config
» Select Overclocking
» Select RPi2
sudo reboot
```

## Via Config.txt

> **RPi2 Overclocking**

```bash
cd ~
sudo /boot/config.txt
arm_freq=1000
core_freq=500
sdram_freq=500
over_voltage=2
sudo reboot
```

> **Default values**

```bash
cd ~
sudo /boot/config.txt
arm_freq=700
core_freq=500
sdram_freq=500
over_voltage=2
sudo reboot
```

## Disable Overclocking

> **Doesnt' work with NOOBS installed**<br>
> Hold shift key at boot
