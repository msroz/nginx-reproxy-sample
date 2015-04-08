#!/bin/sh
set -e
plackup -p 5000 frontend.psgi &
PID_FRONT=$!
echo $PID_FRONT

plackup -p 5001 backend.psgi &
PID_BACK=$!
echo $PID_BACK

trap "kill $PID_FRONT $PID_BACK" 1 2 3 15
wait
