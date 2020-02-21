#!/usr/bin/env bash

#terminate running poly
killall -q polybar

#launch bar
echo "---" | tee -a /tmp/top_bar.log
polybar top_bar >>/tmp/top_bar.log 2>&1 &

echo "Done."
