# WIFI

### Scan WIFI network

```bash
cd ~
sudo iwlist wlan0 scan
```

### Setup

```bash
cd ~
sudo nano /etc/wpa_supplicant/wpa_supplicant.conf
```

> At the end of the file

```conf
network={
id_str="custom_name"
ssid="internet_box_ssid"
psk="wifi_password"
}
```

### Check if connected

```bash
cd ~
ifconfig wlan0
```

### WIFI Down

```bash
cd ~
sudo ifdown wlan0
```

### WIFI Up

```bash
cd ~
sudo ifup wlan0
```

[source](https://www.raspberrypi.org/documentation/configuration/wireless/wireless-cli.md)
