#!/usr/bin/env zsh

function dual {
  xrandr \
    --output DP-1 --above eDP-1 --auto \
    --output eDP-1 --primary --auto
  xmonad --restart
}

dual
