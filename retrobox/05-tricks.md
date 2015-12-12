# Raspberry Tricks

## Auto Login

```bash
sudo nano /etc/inittab
» #1:2345:respawn:/sbin/getty 115200 tty1
» 1:2345:respawn:/bin/login -f pi tty1 </dev/tty1 >/dev/tty1 2>&1
sudo reboot
```

[source](http://www.opentechguides.com/how-to/article/raspberry-pi/5/raspberry-pi-auto-start.html)
