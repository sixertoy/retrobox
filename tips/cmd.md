# CMD

> Command lines under an UNI environnement<br>

- [Change Directory to home folder](./cmd.md#change-directory-to-your-home-folder)
- [Reboot a device](./cmd.md#reboot-a-device)
- [Nano file editor](./cmd.md#edit-a-file-via-nano-editor)
- [List a directory](./cmd.md#list-a-directory)
- [List running process](./cmd.md#list-running-process)
- [Show Raspbian Version](./cmd.md#show-raspbian-version)
- [Show Disk space](./cmd.md#show-disk-space)
- [Show USB Devices](./cmd.md#show-usb-devices)
- [Show modules installed](./cmd.md#show-installed-modules)
- [Show logs for boot](./cmd.md#show-logs-for-boot)

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

## List running process

```bash
ps -A
```

## Show Raspbian version

> Install package

```bash
sudo apt-get install lsb-release
```

> Available when package is installed

```bash
lsb_release -a
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

## Show logs for boot

```bash
dmesg
```
