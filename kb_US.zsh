#! /usr/bin/env zsh

function kb_US {
  # Note that -option is sticky, so the first -option is there to help XKB
  # forget existing options such that the output of this command is a bit more
  # "controlled".
  setxkbmap -option -model dell -layout us -option caps:ctrl_modifier
}

kb_US
