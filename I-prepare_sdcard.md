# Prepare SD Card (16Go)

## 1. Plug

- Don't connect power cable yet to RPi
- Connect HDMI cable to RPi
- Connect Ethernet cable to RPi
- Plug WIFI key (optionnal)
- Plug Bluetooth key (optionnal)

## 2. Install & configure Superputty/WinSCP

> Superputty

- [Download Putty For Windows on Intel x86 - putty.exe](http://www.putty.org)
- Copy **putty.exe** to **C:\Program Files (x86)\Putty**
- Enable **Putty** run as **Administrator**
- [Download Superputty msi installer](https://github.com/jimradford/superputty/releases)
- Install **Superputty**
- Open **Superputty**
- Click **putty.exe location (Required)** Browse button and select **C:\Program Files (x86)\Putty\putty.exe**
- Click **ok**
- Close Superputty we will configure it later

> WinSCP

- [Download WinSCP](https://winscp.net/eng/docs/lang:fr)
- Install Winscp
- Close Winscp we will configure it later

## 3. Format SDCard

- Install **SDFormatter**
- Insert SDCard
- Open SDFormatter
- Select **Drive** (take care choosing the right disk letter)
- Set **volume label** to **RETROBOX**
- Click **Options**
- Set options **Format type** to **quick**
- Set options **Format size adjustment** to **on**
- Click **ok**
- Click **Format**
- Exit

## 4. Burn Retropie image file on SDCard

[Download Retropie image file](http://blog.petrockblock.com/retropie/retropie-downloads/)
Launch Win32DiskImage
Select Retropie Image File
Select target SDCard
Click "Write" > yes
Exit Win32DiskImage

Insert SDCard in RPi
Connect Battery Cable

Connect to RPi via SSH
User: pi
Password: raspberry

[**NEXT - Setup & Config**](./II-setup_configuration.md)
