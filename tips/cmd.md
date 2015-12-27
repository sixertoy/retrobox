# CMD

> Command lines under an UNI environnement<br>

- [Change Directory to home folder](https://github.com/sixertoy/retrobox/blob/master/tips/cmd.md#change-directory-to-your-home-folder)
- [Reboot a device](https://github.com/sixertoy/retrobox/blob/master/tips/cmd.md#reboot-a-device)
- [Nano file editor](https://github.com/sixertoy/retrobox/blob/master/tips/cmd.md#edit-a-file-via-nano-editor)
- [List a directory](https://github.com/sixertoy/retrobox/blob/master/tips/cmd.md#list-a-directory)
- [Show Raspbian Version](https://github.com/sixertoy/retrobox/blob/master/tips/cmd.md#show-raspbian-version)
- [Show Disk space](https://github.com/sixertoy/retrobox/blob/master/tips/cmd.md#show-disk-space)
- [Show USB Devices](https://github.com/sixertoy/retrobox/blob/master/tips/cmd.md#show-usb-devices)
- [Show modules installed](https://github.com/sixertoy/retrobox/blob/master/tips/cmd.md#show-installed-modules)
- [Show logs at boot]()

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
