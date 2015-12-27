# Update System

> **This operations must be done before any others installations at a new system install**

## 1. Expand Filesystem

```bash
sudo raspi-config
» Expand Filesystem
```

> exit and reboot

## 2. Udpate packages

```bash
sudo apt-get update
sudo apt-get upgrade
sudo reboot
```
## 3. Update Display Drivers

```bash
sudo rpi-update
sudo reboot
```

> System is now up to date
