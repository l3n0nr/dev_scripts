# !bin/bash
#limpando a tela
clear

while true
    clear
    sudo tlp stat -b | grep /sys/class/power_supply/BAT0/current_now
    sudo tlp stat -b | grep /sys/class/power_supply/BAT0/charge_now
    sleep 5
do
