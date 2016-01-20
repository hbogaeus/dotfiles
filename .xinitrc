setxkbmap se
/usr/bin/VBoxClient-all
#feh --bg-fill ~/images/gold-bokeh.jpg
make -C /home/henry/suckless/dwm

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
 
#fswebcam -q --no-banner -r 1280x720 ~/images/login/$(date +%Y-%d-%m_%H-%M).jpg &

while true; do
	# Power/Battery Status
	DWM_BATTERY=$( cat /sys/class/power_supply/BAT0/capacity );
	
	# Wi-Fi eSSID
	#if [ "$( cat /sys/class/net/enp0s3/operstate )" == "up" ]; then
	#	DWM_ESSID=$( cat /sys/class/net/enp0s3/address); 
	#else
	#	DWM_ESSID="OFF";
	#fi;
	# Space left on HDD
	#DWM_HDDFREE=$(df -Ph /dev/sda1 | awk '/[0-9]+/{print $4}');

	# Volume Level
	#DWM_VOL="$(amixer get Master | tail -n1 | sed -r 's/.*\[(.*)%\].*/\1/')";
	# Date and Time
	DWM_CLOCK=$( date '+%a %d/%m %H:%M' );

	DWM_UPDATES=$(checkupdates | wc -l);

	# Overall output command
	#xsetroot -name="WiFi: [$DWM_ESSID] | HDD:[$DWM_HDDFREE] | UPDATES: [$DWM_UPDATES] | Power: [$DWM_BATTERY] | Vol: $DWM_VOL | $DWM_CLOCK"; 
	xsetroot -name "$DWM_BATTERY | $DWM_UPDATES | $DWM_CLOCK";
	sleep 1s;
done &

exec /home/henry/suckless/dwm/dwm

#sxhkd &
#exec bspwm
