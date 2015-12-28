# /etc/profile.d/99-retrobox_autotart.sh
#
### Install
# cd ~
# wget 
# mv 99-retrobox_autotart.sh /etc/profile.d/
# 
#
[ -n "${SSH_CONNECTION}" ] || retrobox start
