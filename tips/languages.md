# Languages, Timezone & Keyboard

> In menu **spacebar** for select/unselect<br>
> **Enter** to validate<br>
> **Left/Right** arrow to validate/cancel

## 1. Languages

```bash
sudo raspi-config
» Select **Internationalisation Options**
» » Select **Change Locale**
» » » Unselect **en_GB.UTF-8**
» » » Select **fr_FR.UTF-8**
» » » Select **fr_FR.ISO-8859-1**
» » » » Select **fr_FR.UTF8** for default locale
» Select **Finish** to exit
sudo reboot
```

## 2. Timezone

```bash
sudo raspi-config
» Select **Internationalisation Options**
» » Select **Change Timezone**
» » » Select **Europe**
» » » » Select **Paris**
» Select **Finish** to exit
sudo reboot
```

## 3. Keyboard

```bash
sudo raspi-config
» Select **Internationalisation Options**
» » Select **Change Keyboard Layout**
» » » Select **Generic 105 Key**
» » » » Select **Other**
» » » » Select **French**
» » » » » Select **French** once more
» » » » » » Select **The default for keyboard layout**
» » » » » » » Select **No Compose Key**
» » » » » » » » Select **No** for X Server
» Select **Finish** to exit
sudo reboot
```
