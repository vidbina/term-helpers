#!/usr/bin/env zsh

function dual {
  xrandr \
    --output DP1 --above eDP1 --auto \
    --output eDP1 --primary --auto
  xmonad --restart
}

dual
