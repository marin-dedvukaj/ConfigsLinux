#!/bin/bash
VOLUME=$(pulseaudio-ctl full-status | awk '{print $1}')
MUTE=$(pulseaudio-ctl full-status | awk '{print $2}')
if [ "$MUTE" == "yes" ]; then
    echo " Muted"
else
    echo " $VOLUME%"
fi
