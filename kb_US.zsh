#! /usr/bin/env zsh

function kb_US {
  setxkbmap -option -model dell -layout us -option caps:ctrl_modifier
}

kb_US
