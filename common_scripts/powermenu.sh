#!/bin/sh

selection=$(dialog --stdout --title "Power Menu" --menu "Choose one: " 0 0 3 1 lock 2 reboot 3 shutdown)

if [[ "$?" != "0" ]]; then
	echo ""
else
  case $selection in
		1 )
			;;
		2 )
		  doas /sbin/shutdown -r now
			;;
		3 )
		  doas /sbin/shutdown -p now
			;;
	esac
fi

clear
