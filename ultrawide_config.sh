#!/bin/sh
MODE_NAME="ULTRAWIDE-2560X1080X60"
OUTPUT="HDMI-2"
CONNECTED_OUTPUT=$(xrandr --current | grep -i $OUTPUT | cut -f2 -d' ')

if [ "$CONNECTED_OUTPUT" = "connected" ]; then
  # SET 2560x1080 60 HZ
  xrandr --newmode "$MODE_NAME" 230.76  2560 2728 3000 3440  1080 1081 1084 1118  -HSync +Vsync
  xrandr --addmode "$OUTPUT" "$MODE_NAME"
  xrandr --output "$OUTPUT" --mode "$MODE_NAME"
  #------------------------Remove------------------------#
  #xrandr --delmode "HDMI-2" "ULTRAWIDE"
else
  echo "ULTRAWIDE IS NOT DETECTED !"
fi