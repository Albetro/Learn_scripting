#!/bin/bash

name=$1

compliment=$2

user=$(whoami)
date=$(date)
whereami=$(pwd)

echo "GOOD MORNING $name"

sleep 2

echo "you're looking good today $name"

sleep 2

echo "you have the best $compliment  $name"
 
sleep 2

echo "You are currently logged in as $user and you are in the directory $whereami, also today is: $date"
