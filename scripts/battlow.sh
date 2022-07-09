#!/usr/bin/bash

while :
do
	batt_level=$(cat /sys/class/power_supply/BAT0/capacity)
	ac_power=$(cat /sys/class/power_supply/BAT0/status)  #Charging or Discharging
	myliget=$(light -G)
	bright=${myliget%.*}  # String to number
	if [ $ac_power = "Discharging" ] && [ $batt_level -le 15 ]; then
		dunstify --urgency=critical "Alert" "Battery only $batt_level%"
		light -S 10
		echo "Battery only $batt_level%"
	elif [ $ac_power = "Discharging" ] && [ $batt_level -le 10 ]; then
		loginctl poweroff
	elif [ $ac_power = "Charging" ] && [ $bright -le 20 ]; then
		light -S 15
	fi
	sleep 5
done

