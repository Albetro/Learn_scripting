#!/bin/bash
THRESHOLD=80

usage=$(df -h / | grep -v Filesystem | awk '{ print $5 }' | sed 's/%//')

if [ "$usage" -gt "$THRESHOLD" ]; then
  echo "Disk usage is above $THRESHOLD%! Currently at $usage%."
else
  echo "Disk usage is at a safe level: $usage%"
fi
