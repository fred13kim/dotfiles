#!/bin/bash

sprites=( "    🐢" "   🐢 " "  🐢  " " 🐢   " "🐢    ")

while [ 1 ]
do
    for i in "${sprites[@]}"
    do
        echo -ne "\r$i"
        sleep 1
    done
done
