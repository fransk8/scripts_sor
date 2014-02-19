#!/bin/bash

if [ "$1" == "-cpumodel" ]; then
  calculo=$(cat /proc/cpuinfo | grep -P "model name\s*" | cut -d ":" -f2)
  
else 
  if [ "$1" == "-ramMB" ]; then 
    calculo=$(cat /proc/meminfo | grep -P "MemTotal:" | cut -d ":" -f2 | cut -c1-12)
    
  else		 
    if [ "$1" == "-cacheMB" ]; then
      cacheMB=$(cat /proc/cpuinfo | grep -P "cache size\s*" | cut -d ":" -f2)
      
    else
      if [ "$1" == "-rampocupadaMB" ]; then
        ramlibre=$(cat /proc/cpuinfo | grep -P "MemFree:" | cud -d ":" -f2)
	ramtotal=$(cat /proc/cpuinfo | grep -P "MemTotal:" | cut -d ":" -f2)
	ramocupadaMB=$[($ramlibre-$ramtotal)/1024]	
        calculo="$ramocupadaMB MB"
      else
        echo "ERROR PON UNA DE ESTAS OPCIONES: -cpumodel, -ramMB, -cacheMB, -ramocupadaMB"
      fi
    fi
  fi
fi
