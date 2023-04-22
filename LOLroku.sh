#!/bin/bash

# Change these variables to match your Roku device's IP address and ECP port number
ROKU_IP="$1"
ROKU_PORT="8060"

# Define an array of Roku remote control buttons
BUTTONS=("home" "up" "down" "left" "right" "select" "back" "rewind" "forward" "play" "pause")

while true; do
# Choose a random button from the array
RANDOM_BUTTON=${BUTTONS[$RANDOM % ${#BUTTONS[@]}]}
echo $RANDOM_BUTTON

# Send the button press command to the Roku device using curl
curl -d '' "http://$ROKU_IP:$ROKU_PORT/keypress/$RANDOM_BUTTON"
sleep $2

done
