# WIFI

> Scan WIFI network

```bash
sudo iwlist wlan0 scan
```

> Setup

```bash
sudo nano /etc/wpa_supplicant/wpa_supplicant.conf
```

```conf
network={
id_str="custom_name"
ssid="internet_box_ssid"
psk="wifi_password"
}
```

> Check if connected

```bash
ifconfig wlan0
```

> WIFI Down

```bash
sudo ifdown wlan0
```

> WIFI Up

```bash
sudo ifup wlan0
```

[source](https://www.raspberrypi.org/documentation/configuration/wireless/wireless-cli.md)
