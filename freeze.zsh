#!/usr/bin/env zsh

function freeze {
  xtrlock-pam -b none
}

freeze
