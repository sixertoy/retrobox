# II - Setup Noobs

> Noobs create a recovery partition<br>
> To backup your custom OS<br>
> and reinstall it if needed<br>

> [Download Noobs](https://www.raspberrypi.org/downloads/noobs/)<br>
> **All operations are case sensitive**<br>

## 1. Edit Noobs to install a new OS

```bash
Unzip Noobs
Copy noobs(xx)/os/Raspbian and rename it as noobs(xx)/os/Retrobox
```

> Edit noobs(xx)/recovery.cmdline

```bash
Add silentinstall at the end of line
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
> Burn jessie img file on your SDCard

### 3.1. Configure Display driver

> Edit /boot/config.txt

```bash
Uncomment (#) dtparam=spi=on
Add dtoverlay=mz61581-overlay.dtb
```

### 3.2. Configure Display driver

> Edit /boot/config.txt

```bash
Add gpu_mem_256=128
Add gpu_mem_512=256
Add gpu_mem_1024=512
Add overscan_left=-30
Add overscan_right=-30
Add overscan_top=-30
Add overscan_bottom=-30
Add overscan_scale=1
Add disbale_overscan=0
Add disable_audio_dither=1
```

### 3.3. Show boot on display at startup

> Edit /boot/cmdline.txt

```bash
Add fbcon=map:10 fbcon=font:ProFont6x11 to the end of line
```

> **Eject SDCard & plug it on your RPi**

[**NEXT - Custom OS Retrobox**](./III-custom_os.md)
