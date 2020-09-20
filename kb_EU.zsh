#!/usr/bin/env zsh

function kb_EU {
  # Note that -option is sticky, so the first -option is there to help XKB
  # forget existing options such that the output of this command is a bit more
  # "controlled".
  setxkbmap -option -model dell -layout us -variant intl -option "lv3:caps_switch,compose:ralt"
}

kb_EU
