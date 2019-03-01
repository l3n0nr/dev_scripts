## REFERENCE: https://forum.xda-developers.com/showthread.php?t=1279436

INTERVAL=5

CAPACITYVOLTAGE=0
while true; do
  PREVVOLTAGE=$CAPACITYVOLTAGE
  DATETIME=$(date +'%Y/%m/%d|%H:%M:%S')
  CAPACITYVOLTAGE="$(( $(cat /sys/class/power_supply/BAT0/voltage_now) / 1000))"
  CAPACITYPERCENT="$(cat /sys/class/power_supply/BAT0/capacity)"
  DISCHARGE="+$(( $CAPACITYVOLTAGE - $PREVVOLTAGE ))"
 
  echo "${DATETIME}|$(echo ${DISCHARGE}|sed -e 's/^+-/-/')mA|${CAPACITYPERCENT}%|${CAPACITYVOLTAGE}mV"

  sleep ${INTERVAL}
done