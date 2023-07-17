OUTPUT=""
for bat in /sys/class/power_supply/BAT?*; do 
    OUTPUT="$OUTPUT$(cat "$bat/capacity")%"
done

echo "$OUTPUT"
