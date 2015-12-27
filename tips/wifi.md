# WIFI

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

> WIFI Down

```bash
sudo ifdown wlan0
```

> WIFI Up

```bash
sudo ifup wlan0
```
