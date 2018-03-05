#!/bin/bash
# Get information about battery from System Profiler
batt="$(system_profiler SPPowerDataType | grep "Charge Remaining (mAh)" | awk '{print $4}')"
cycles="$(system_profiler SPPowerDataType | grep "Cycle Count" | awk '{print $3}')"
charging="$(system_profiler SPPowerDataType | grep "Connected" | awk '{print $2}')" 

# My MacBook Pro is rated for 1000 battery cycles, this is how many remain
cycles_remain=$[1000-$cycles]

# Echo response for Telegraf
echo 'battery,user=kstevens mAh='$batt',cycles='$cycles',cycles_reminaing='$cycles_remain

# Check if the power is plugged in 
if [ "$charging" == "Yes" ]; then
  echo 'ac_connected,user=kstevens value=1'
else 
  echo 'ac_disconnected,user=kstevens value=1'
fi
