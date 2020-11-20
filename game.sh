#!/bin/bash

if [ $1 == on ]
then
  echo "Disableling monitors DP-2 & DP-5 "
  /usr/bin/xrandr --output DP-5 --off 
  /usr/bin/xrandr --output DP-2 --off 
  /usr/bin/xrandr --output HDMI-0 --off
  /usr/bin/xrandr --output HDMI-0 --auto


  
fi
if [ $1 == off ]
then
  echo "Enableling monitors DP-2 & DP-5 "
  /usr/bin/xrandr --output DP-2 --auto --right-of HDMI-0
  /usr/bin/xrandr --output DP-5 --auto --left-of HDMI-0
  /usr/bin/xrandr --output HDMI-0 --auto
  
fi
if [ $1 == reset ]
then
  echo "Reset buggy monitor.. "
  /usr/bin/xrandr --output DP-2 --off 
  /usr/bin/xrandr --output DP-2 --auto --right-of HDMI-0
  /usr/bin/xrandr --output HDMI-0 --auto
  
fi

