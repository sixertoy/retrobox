# I - Prepare SD Card

## 1. Plug

- **Do not connect** power cable yet to RPi
- Connect HDMI cable to RPi
- Connect Ethernet cable to RPi
- Plug WIFI key (optionnal)
- Plug Bluetooth key (optionnal)

## 2. Install & configure Superputty/WinSCP/Notepad++

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

> Notepad++

- [Install Notepad++](https://notepad-plus-plus.org/download/v6.8.8.html)
- Edit Notepad++ configuration to show hidden characters & using Unix line ending

## 3. Format SDCard

- Install **SDFormatter**
- Insert SDCard in PC
- Open SDFormatter
- Select **Drive** (take care choosing the right disk letter)
- Set **volume label** to **RETROBOX**
- Click **Options**
- Set options **Format type** to **quick**
- Set options **Format size adjustment** to **on**
- Click **ok**
- Click **Format**
- Exit

[**NEXT - Setup Noobs**](./II-setup_noobs.md)
