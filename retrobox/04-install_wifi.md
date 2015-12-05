# 4. Install Wifi



> Config

```bash
sudo nano /etc/wpa_supplicant/wpa_supplicant.conf
» ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
» update_config=1

» network={
» ssid="_SSID_" # replace with box id
» proto=RSN
» key_mgmt=WPA-PSK
» pairwise=CCMP TKIP
» group=CCMP TKIP
» psk="_WPA_SHARED_KEY_" # replace with secret key
» }
sudo reboot
```

> Init only if checkout was KO

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
```

[source](http://www.savagehomeautomation.com/projects/raspberry-pi-installing-the-edimax-ew-7811un-usb-wifi-adapte.html)
