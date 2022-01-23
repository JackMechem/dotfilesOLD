#!/usr/bin/env bash

mic_is_on=$(amixer -D pulse get IEC958 | grep "\[on\]")

if [ $? -eq 0 ]; then
    printf %s ""
else
    printf %s ""
fi
