#!/bin/bash

#implement start, stop, set, rst
min=$1
sec=0

SPRITES=(
"   ___   "
"  / _ \  "
" | | | | "
" | | | | "
" | |_| | "
"  \___/  "
"   __    "
"  /_ |   "
"   | |   "
"   | |   "
"   | |   "
"   |_|   "
"   ___   "
"  |__ \  "
"     ) | "
"    / /  "
"   / /_  "
"  |____| "
"  ____   "
" |___ \  "
"   __) | "
"  |__ <  "
"  ___) | "
" |____/  "
"  _  _   "
" | || |  "
" | || |_ "
" |__   _|"
"    | |  "
"    |_|  "
"  _____  "
" | ____| "
" | |__   "
" |___ \  "
"  ___) | "
" |____/  "
"    __   "
"   / /   "
"  / /_   "
" | '_ \  "
" | (_) | "
"  \___/  "
"  ______ "
" |____  |"
"     / / "
"    / /  "
"   / /   "
"  /_/    "
"   ___   "
"  / _ \  "
" | (_) | "
"  > _ <  "
" | (_) | "
"  \___/  "
"   ___   "
"  / _ \  "
" | (_) | "
"  \__, | "
"    / /  "
"   /_/   "
"         "
"    _    "
"   (_)   "
"         "
"    _    "
"   (_)   "
)

SPRITE_HEIGHT=$(( ${#SPRITES[@]} / 11 ))



function artify()
{
    str=$1
    for (( line = 0; line < SPRITE_HEIGHT; line++ )); do
        for (( c = 0; c < ${#str}; c++ )); do
            local ch=$(LC_CTYPE=C printf '%d' "'${str:$c:1}") # get ascii value
            ch=$((ch-48))
            if (( ch >= 0 && ch <= 10 )); then
                local i=$(( ch * SPRITE_HEIGHT + line ))
                printf '%s' "${SPRITES[$i]}"
            fi
        done

        printf '\n'
    done
}

clear
while [ $min -ge 0 ]; do
    while [ $sec -ge 0 ]; do
        var=$(printf "%02d:%02d" $min $sec)
        #echo -ne "$var\r"
        artify $var
        #echo -ne "$(printf "%02d:%02d" $min $sec)\r"
        let "sec=sec-1"
        sleep 1
        clear
    done
    sec=59
    let "min=min-1"
done
aplay "$HOME/.scripts/pomodoro/alarm.wav"
