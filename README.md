# Retrobox
RPI + Retropie + Waveshare TFT 3.5 Screen

## [Mirroring HDMI to LCD](http://blog.petrockblock.com/forums/topic/swap-emulationstation-from-hdmi-to-lcd/#post-107972)

```bash
sudo apt-get install cmake
git clone https://github.com/tasanakorn/rpi-fbcp
cd rpi-fbcp/
mkdir build
cd build/
cmake ..
make
sudo install fbcp /usr/local/bin/fbcp

#now make sure you are cd'ed into the build folder, now run the program:
fbcp &

#now you can run emulation station:
emulationstation
```
