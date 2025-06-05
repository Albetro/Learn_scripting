#!/bin/bash

HOSTS=("8.8.8.8." "1.1.1.1" "google.com")

for HOST in "${HOSTS[@]}"; do
  ping -c 1 "$HOST" &>/dev/null && \
   echo "$HOST is reachable" || \
   echo "$HOST is unreachable"
done
