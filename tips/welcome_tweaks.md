# Welcome Tweaks

> **Take care of Spaces**

```bash
cd ~
wget https://raw.githubusercontent.com/sixertoy/retrobox/master/files/.welcome_tweaks
sudo nano ~/.bashrc
# Must be place at the end of the file
# Must be the last instruction
if [ -f ~/.welcome_tweaks ]; then
    . ~/.welcome_tweaks
fi
# Exit nano editor
sudo reboot
