#!/bin/bash
declare -A count

for file in *; do
  ext="${file##*.}"
  ((count["$ext"]++))
done

for type in "${!count[@]}"; do
  echo "$type: ${count[$type]}"
done
