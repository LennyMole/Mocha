#!/usr/bin/env bash

#terminate running poly
killall -q polybar

#launch bar
echo "---" | tee -a /tmp/top-bar.log
polybar top-bar >>/tmp/top-bar.log 2>&1 &

echo "Done."
