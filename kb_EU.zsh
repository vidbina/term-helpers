#!/usr/bin/env zsh

function kb_EU {
  setxkbmap -option -model dell -layout us -variant intl -option "lv3:caps_switch,compose:ralt"
}

kb_EU
