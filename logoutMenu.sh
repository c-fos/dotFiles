#!/bin/sh

ACTION=`dialog --stdout --menu "logout Menu" 0 45 5 "Shutdown"\
 "power off the computer" "Reboot" "reboot the computer" "Suspend" "suspend to ram"\
  "Hibernate" "suspend to disk" "LockScreen" "slock"`
if [ -n "${ACTION}" ];then
  case $ACTION in
  Shutdown)
  	dialog --yesno "Are you sure?" 5 20&&sudo halt
  ;;
  Reboot)
        dialog --yesno "Are you sure?" 5 20&&sudo reboot
  ;;
  Suspend)
	sudo hibernate-ram
  ;;
  Hibernate)
  	sudo hibernate
  ;;
  LockScreen)
  	slock
  ;;
  esac
fi
