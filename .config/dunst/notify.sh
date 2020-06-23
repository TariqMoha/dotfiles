#!/bin/sh
# mpd notifier on song change.
# use dunst for notification if you like

while true; do
            ONAIR="$(mpc current --wait)"
              notify-send "Now Playing " "${ONAIR}"
                sleep 1
              done
              exit 0
