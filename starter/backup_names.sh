#!/bin/bash
for FILE in *.txt; do
  mv "$FILE" "${FILE%.txt}.bak.txt"
done
