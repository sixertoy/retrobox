#!/usr/bin/env bash

# This file is part of The RetroPie Project
# 
# The RetroPie Project is the legal property of its developers, whose names are
# too numerous to list here. Please refer to the COPYRIGHT.md file distributed with this source.
# 
# See the LICENSE.md file at the top-level directory of this distribution and 
# at https://raw.githubusercontent.com/RetroPie/RetroPie-Setup/master/LICENSE.md
#
# Copy inside "$home/.bashrc"

# RETROPIE PROFILE START
# Thanks to http://blog.petrockblock.com/forums/topic/retropie-mushroom-motd/#post-3965

function retropie_welcome() {
    local upSeconds="$(/usr/bin/cut -d. -f1 /proc/uptime)"
    local secs=$((upSeconds%60))
    local mins=$((upSeconds/60%60))
    local hours=$((upSeconds/3600%24))
    local days=$((upSeconds/86400))
    local UPTIME=$(printf "%d days, %02dh%02dm%02ds" "$days" "$hours" "$mins" "$secs")

    # calculate rough CPU and GPU temperatures:
    local cpuTempC
    local cpuTempF
    local gpuTempC
    local gpuTempF
    if [[ -f "/sys/class/thermal/thermal_zone0/temp" ]]; then
        cpuTempC=$(($(cat /sys/class/thermal/thermal_zone0/temp)/1000)) && cpuTempF=$((cpuTempC*9/5+32))
    fi

    if [[ -f "/opt/vc/bin/vcgencmd" ]]; then
        if gpuTempC=$(/opt/vc/bin/vcgencmd measure_temp); then
            gpuTempC=${gpuTempC:5:2}
            gpuTempF=$((gpuTempC*9/5+32))
        else
            gpuTempC=""
        fi
    fi

    local df_out=()
    local line
    while read line; do
        df_out+=("$line")
    done < <(df -h /)

echo "$(tput setaf 2)
$(date +"%A, %e %B %Y, %r")
$(uname -srmo)$(tput setaf 1)
  
$(tput setaf 3)${df_out[0]}$(tput setaf 1)
$(tput setaf 7)${df_out[1]}$(tput setaf 1)
Uptime........: ${UPTIME}
Memory........: $(grep MemFree /proc/meminfo | awk {'print $2'})kB (Free) / $(grep MemTotal /proc/meminfo | awk {'print $2'})kB (Total)$(tput setaf 7)
Running Proc..: $(ps ax | wc -l | tr -d " ")$(tput setaf 7)
IP Address....: $(ip route get 8.8.8.8 2>/dev/null | head -1 | cut -d' ' -f8) $(tput setaf 7)
Temp..........: CPU: $cpuTempC°C/$cpuTempF°F GPU: $gpuTempC°C/$gpuTempF°F

$(tput sgr0)"
}

retropie_welcome
