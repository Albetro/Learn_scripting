#!/bin/bash
read -p "Enter process name: " proc
if pgrep -x "$proc" >/dev/null; then
  echo "$proc is running"
else
  echo "$proc is not running"
fi
