#!/bin/bash

echo "Welcome to the Maasai Tower Hotel"
sleep 1
echo "Going up"
sleep 1

for x in {1..17};
do
  if [[ $x == 13 ]]; then
    continue
  fi
  echo "Floor $x"
done
