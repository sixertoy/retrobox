# /etc/profile.d/99-retrobox_autotart.sh
#
### Install
# cd ~
# wget https://raw.githubusercontent.com/sixertoy/retrobox/master/files/99-retrobox_autotart.sh
# mv 99-retrobox_autotart.sh /etc/profile.d/
# 
#
# Autostart only if we are not in a SSH Connection
[ -n "${SSH_CONNECTION}" ] || retrobox start
