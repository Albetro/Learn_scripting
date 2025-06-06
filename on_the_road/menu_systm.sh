#!/bin/bash
PS3="Choose an option: "
options=("List Files" "Check Uptime" "Check Disk" "Quit")

select opt in "${options[@]}"
do
  case $opt in
    "List Files") ls -lh ;;
    "Check Uptime") uptime ;;
    "Check Disk") df -h ;;
    "Quit") break ;;
    *) echo "Invalid option $REPLY";;
  esac
done
