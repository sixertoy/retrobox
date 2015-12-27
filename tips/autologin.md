# Autologin

## Raspbian Wheezy

> Allows an user to autoconnect via a TTY connection

```bash
cd ~
# edit file via nano editor
sudo nano /etc/inittab
# replace line below
1:2345:respawn:/sbin/getty --noclear 38400 tty1
# by
1:2345:respawn:/bin/login -f pi tty1 /dev/tty1 2>&1
# save and exit nano
# by pressing ctrl+x
# at prompt press `y` (o)
# then press enter to validate filename
sudo reboot
```

## Rasbian Jessie

> For an autologin under **Raspbian Jessie Version** see file [autologin.conf](./../files/autologin.conf) in files section
