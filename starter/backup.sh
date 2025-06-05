#!/bin/bash

SOURCE="$1"
DEST="$2"
DATE=$(date +%Y-%m-%d)

if [[ -z "$SOURCE" || -z "$DEST" ]]; then
  echo "Usage: $0 /path/to/source path/to/backup"
  exit 1
fi

#archive and compress a folder

tar -czvf "$DEST/backup_$DATE.tar.gz" "$SOURCE"
