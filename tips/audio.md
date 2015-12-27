# Audio

[source](http://blog.scphillips.com/posts/2013/01/sound-configuration-on-raspberry-pi-with-alsa/)

## Sound mixer

```bash
cd ~
alsamixer
```

## Switch the audio output to HDMI

```bash
cd ~
amixer cset numid=3 2
```

## Switch the audio output to headphone jack

```bash
cd ~
amixer cset numid=3 1
```

## Automatic switch audio

```bash
cd ~
amixer cset numid=3 0
```

## If not getting audio via HDMI

```bash
cd ~
sudo nano /boot/config.txt
» hdmi_drive=2
```
