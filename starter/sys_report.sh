#!/bin/bash

# File to save report
REPORT_FILE="system_report_$(date +%Y-%m-%d_%H-%M-%S).log"

echo "System Report - $(date)" > "$REPORT_FILE"
echo "==========================" >> "$REPORT_FILE"

echo -e "\nDisk Usage:" >> "$REPORT_FILE"
df -h >> "$REPORT_FILE"

echo -e "\nMemory Usage:" >> "$REPORT_FILE"
free -h >> "$REPORT_FILE"

echo -e "\nCurrently Logged In Users:" >> "$REPORT_FILE"
who >> "$REPORT_FILE"

echo -e "\nReport saved to $REPORT_FILE"
