#!/usr/bin/env zsh

function single {
  xrandr \
    --output eDP-1 --auto \
    --output DP-1 --off
  xmonad --restart
}

single
