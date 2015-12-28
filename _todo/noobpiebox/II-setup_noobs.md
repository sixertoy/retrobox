# II - Setup Noobs

> Noobs create a recovery partition<br>
> To backup your custom OS<br>
> And recovery it if needed<br>

> [Download Noobs](https://www.raspberrypi.org/downloads/noobs/)<br>
> **All operations are case sensitive**<br>

## 1. Edit Noobs to install a new OS

```bash
Unzip Noobs
Copy noobs(xx)/os/Raspbian and rename it as noobs(xx)/os/Retrobox
```

> Edit noobs(xx)/recovery.cmdline<br>
> Add at the end of the line

```bash
silentinstall
```

## 2. Create & Configure a new custom OS

> Edit noobs(xx)/os/Retrobox/os.json

```bash
Change name property (Raspbian) to Retrobox
Change description property to your own description
Note user & password properties you will need it to connect to your RPi
```

> Edit logo and slides images noobs(xx)/os/Retrobox

```bash
Rename Raspbian.png to Retrobox.png
Edit/Change Retrobox.png to your own (optional)
Edit/Change images .png in noobs(xx)/os/Retrobox/slides_vga/ (optional)
Edit url property to your own (optional)
```

## 3. Edit custom OS boot

> Plug SDCard into your PC<br>
> Download [Jessie Lite OS ](https://www.raspberrypi.org/downloads/raspbian/)<br>
> X Window is not include in Jessie Lite<br>
> Burn jessie img file on your SDCard

### 3.1. Configure Display driver

> Edit /boot/config.txt

```bash
cd ~
sudo nano /boot/config.txt
# Audio
dtparam=audio=on
disable_audio_dither=1

# Display
dtparam=spi=on
dtoverlay=mz61581-overlay.dtb
gpu_mem_256=128
gpu_mem_512=256
gpu_mem_1024=448
overscan_scale=1

# Overclock RPi 2
arm_freq=1000
sdram_freq=500
core_freq=500
over_voltage=2
temp_limit=80
```

### 3.5. Show boot on display at startup (optional)

> Edit /boot/cmdline.txt<br>
> Add ar the end of line

```bash
cd ~
sudo nano /boot/config.txt
fbcon=map:10 fbcon=font:ProFont6x11
```

[**NEXT - Custom OS Retrobox**](./III-custom_os.md)