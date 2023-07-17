OUTPUT="$(cat /sys/class/thermal/thermal_zone0/temp)"


OUTPUT=$(($OUTPUT / 100))

echo "$(($OUTPUT / 10)).$(($OUTPUT % 10))"
