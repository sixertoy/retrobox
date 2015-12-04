# 5. Install Overlay

```bash
sudo raspi-config
» active spi
» active i2c
sudo reboot
```

```bash
git clone https://github.com/swkim01/waveshare-dtoverlays.git
sudo cp waveshare-dtoverlays/waveshare35a-overlay.dtb /boot/overlays/
sudo nano /boot/config.txt
» dtoverlay=waveshare35a
sudo reboot
```

[source](https://github.com/swkim01/waveshare-dtoverlays)
