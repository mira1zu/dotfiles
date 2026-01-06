#!/bin/bash

# make current window float
yabai -m window --toggle float

# get window size
window_size=$(yabai -m query --windows --window | jq -r '.frame | "\(.w) \(.h)"')

# read window width and height into separate variables
read window_width window_height <<< $window_size

# calculate new height based on a 16:9 aspect ratio
new_height=$(bc <<< "$window_width * 9/16")

# resize window to new height while maintaining the width
yabai -m window --resize abs:$window_width:$new_height
