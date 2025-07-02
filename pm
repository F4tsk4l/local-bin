#!/bin/bash
while getopts "rhsp": OPT; do
  case "$OPT" in
  p)
    systemctl poweroff
    ;;

  s)
    systemctl suspend && betterlockscreen -l
    ;;

  h)
    systemctl hibernate
    ;;

  r)
    systemctl reboot
    ;;

    #    *) systemctl --suspend && betterlockscreen -l
  esac
done
shift "$(($OPTIND - 1))"
