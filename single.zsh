#!/usr/bin/env zsh

function single {
  xrandr \
    --output eDP1 --auto \
    --output DP1 --off
  xmonad --restart
}

single
