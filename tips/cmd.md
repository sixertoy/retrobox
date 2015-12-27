# CMD

> Command lines under an UNI environnement<br>

- Change Directory to home folder
- Reboot a device
- Nano file editor
- List a directory
- Show Disk space
- Show USB Devices
- Show modules installed

#### Change directory to your home folder

```bash
cd ~
```

> **or**

```bash
cd
```

#### Reboot a device

```bash
sudo reboot
```

#### Edit a file via nano editor

```bash
sudo nano /path/to/a/file.extension
```

> To exit and save changes in nano editor<br>
> Press CTRL+X then press Y to overwrite file on N to cancel changes
> Then press ENTER to validate filename

> Nano editor shortcut are highlighted at the screen bottom

#### List a directory

> List inline

```bash
ls
```

> List in columns

```bash
ls -l
```

> List in columns with additionals informations + hidden files

```bash
ls -lA
```

## Show Disk Space

```bash
df -h
```

## Show USB Devices

```bash
lsusb
```

## Show installed modules

```bash
lsmod
```
