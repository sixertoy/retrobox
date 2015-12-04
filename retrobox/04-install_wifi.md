# 4. Install Wifi

> Checkup

```bash
lsusb
# Bus XXX Device XXX: ID XXXX:7811 Edimax Technology Co., Ltd EW-7811Un 802.11n Wireless Adapter [Realtek RTL8188CUS]
lsmod
# 8192cu      528485  0
iwconfig
# wlan0       unassociated  Nickname:"<WIFI@REALTEK>"
```

> Config

```bash
sudo nano /etc/wpa_supplicant/wpa_supplicant.conf
» network={
» ssid="_SSID_" # replace with box id
» proto=RSN
» key_mgmt=WPA-PSK
» pairwise=CCMP TKIP
» group=CCMP TKIP
» psk="_WPA_SHARED_KEY_" # replace with secret key
» }
```

> Init only if checkuo was KO

```bash
sudo nano /etc/network/interfaces
» auto wlan0
» allow-hotplug wlan0
» iface wlan0 inet manual
» wpa-roam /etc/wpa_supplicant/wpa_supplicant.conf
# restart adpater
sudo ifup wlan0
# show ip
ifconfig wlan0
sudo reboot
```

[source](http://www.savagehomeautomation.com/projects/raspberry-pi-installing-the-edimax-ew-7811un-usb-wifi-adapte.html)
