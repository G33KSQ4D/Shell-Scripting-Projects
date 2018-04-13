#!/bin/bash

# Create April 13th, 2018
# Simple script to change the background every given seconds

# IMPLEMENT: user can choose exact time interval? good or bad idea?

printf "Simple script to change background every interval of time\n
		Choose an interval time below:\n
		[a] 30 seconds\n
		[b] 1 minute\n
		[c] 5 minutes\n
		[d] 10 minutes\n
		[e] 30 minutes\n
		[f] 1 hour\n
		[g] 3 hours\n\n"

read -p "Option: " choice 

case $choice in
	"a")
		interval_between_background_switch=30	# 30 seconds
		;;
	"b")
		interval_between_background_switch=60	# 1 minute
		;;
	"c")
		interval_between_background_switch=300	# 5 minutes
		;;
	"d")
		interval_between_background_switch=600	# 10 minutes
		;;
	"e")
		interval_between_background_switch=1800	# 30 minutes
		;;
	"f")
		interval_between_background_switch=3600	# 1 hour
		;;
	"g")
		interval_between_background_switch=10800 # 3 Hours
		;;
esac




while [ "1" -eq "1" ]; do
	for i in $(echo /root/Documents/Wallpapers/*); do
		gsettings set org.gnome.desktop.background picture-uri $i
		sleep $interval_between_background_switch
	done
done