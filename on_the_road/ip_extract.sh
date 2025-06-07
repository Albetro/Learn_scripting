#!/bin/bash
logfile="$1"

if [[ ! -f "$logfile" ]]; then
  echo "Usage: $0 /path/to/logfile"
  exit 1
fi

grep -Eo '([0-9]{1,3}\.){3}[0-9]{1,3}' "$logfile" | sort -u
