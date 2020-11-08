#!/usr/bin/env zsh

# make a snapshot of whatever matters at this moment :)
echo $PWD > "/tmp/zap.pwd"
echo "⚡️"
printenv > "/tmp/zap.env"
