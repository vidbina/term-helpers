#!/usr/bin/env zsh

function zap {
  # make a snapshot of whatever matters at this moment :)
  echo "⚡️"
  rm /tmp/zap.*
  ln -s $PWD /tmp/zap.ln
  printenv > "/tmp/zap.env"
}

function teleport {
  # travel to the zapped location
  if [[ -a "/tmp/zap.ln" ]] {
    echo "🚪"
    cd -P /tmp/zap.ln
  }
}

function splat {
  # splat your brains over the wall... all zapped env vars will be know here
  if [[ -a "/tmp/zap.env" ]] {
    echo "💥"
    cat /tmp/zap.env |
      sed '/^_=/d' |
      sed 's/^/export /' |
      sed 's/=/="/' |
      sed 's/$/"/' > /tmp/zap.env.sh
    source /tmp/zap.env.sh
  }
}
