#!/bin/bash
tar --exclude="$HOME/Downloads" --exclude="$HOME/Videos" -czvf "$HOME/backup_home_$(date +%F).tar.gz" "$HOME"
