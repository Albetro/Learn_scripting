#!/bin/bash
for file in *; do
  if [[ -f "$file" ]]; then
    sha256sum "$file"
  fi
done
