#!/bin/bash
echo "Checking for package updates..."
sudo apt update && sudo apt list --upgradable
