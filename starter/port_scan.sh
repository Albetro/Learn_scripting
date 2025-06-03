#!/bin/bash

# Ask user for target IP or hostname
read -p "Enter target IP or domain: " TARGET

# Define ports to scan (you can add more)
PORTS=(22 80 443 8080 3306)

echo "Scanning $TARGET ..."
echo "-------------------------"

for PORT in "${PORTS[@]}"; do
    timeout 1 bash -c "</dev/tcp/$TARGET/$PORT" &>/dev/null && \
        echo "Port $PORT is OPEN" || \
        echo "Port $PORT is CLOSED"
done
