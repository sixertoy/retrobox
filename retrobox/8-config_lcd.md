# 8. Overclocking & Config LCD

> See sudo nano /etc/modules for FPS and Frequency

```bash
sudo nano /boot/config.txt
gpu_mem=512
```

hdmi_safe=1
# equivaut a
# hdmi_force_hotplug=1
# config_hdmi_boost=4
# hdmi_group=2
# hdmi_mode=4
# disable_overscan=0

sdtv_mode=2 #pal

[source](https://github.com/notro/fbtft/wiki/Performance#mz61581-pi-ext)
[source](http://elinux.org/RPiconfig#Video_mode_options)
[source](https://plomteuxkevin.wordpress.com/2013/02/24/configuration-avancee-du-raspberry/)
