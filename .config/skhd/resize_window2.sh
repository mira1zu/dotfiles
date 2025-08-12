#!/bin/bash

# make current window float
yabai -m window --toggle float

# Get actual screen resolution
screen_frame=$(yabai -m query --displays --display | jq -r '.frame | "\(.w) \(.h)"')

read window_width window_height <<< $screen_frame

# calculate new width based on a 16:9 aspect ratio
new_width=$(bc <<< "($window_height * 16) / 9")

top_padding=$(yabai -m config top_padding)
bottom_padding=$(yabai -m config bottom_padding)

# calculate new height based on yabai paddings
new_height=$(bc <<< "$window_height - $top_padding - $bottom_padding")

yabai -m window --resize abs:$new_width:$new_height

# get current window id
window_id=$(yabai -m query --windows --window | jq -re ".id")

# get window frame details
window_frame=$(yabai -m query --windows --window $window_id | jq -r '.frame | "\(.x) \(.y) \(.w) \(.h)"')

# read window details into separate variables
read window_x window_y window_width window_height <<< $window_frame

# get screen frame details
screen_frame=$(yabai -m query --displays --display | jq -r '.frame | "\(.x) \(.y) \(.w) \(.h)"')

# read screen details into separate variables
read screen_x screen_y screen_width screen_height <<< $screen_frame

# calculate new window position
new_window_x=$(bc <<< "$screen_x + ($screen_width - $window_width) / 2")
new_window_y=$(bc <<< "$screen_y + ($screen_height - $window_height) / 2")

# move window to center
yabai -m window $window_id --move abs:$new_window_x:$new_window_y
