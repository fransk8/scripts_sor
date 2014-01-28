#!/bin/bash
cachedecpu=$(cat /proc/cpuinfo | grep "cache size" | cut -d ":" -f2 | cut -d " "-f2)
CPU=$(cat /proc/cpuinfo | grep "model name" | cut -d ":" -f2)
fpu=$(cat /proc/cpuinfo | grep -P "^fpu\t" | cut -d ":" -f2)

echo "El cache del microprocesador$CPU es$cachedecpu KiB"

if [ "$fpu" == " yes" ]; then
echo "EL MICROCESADOR TIENE FPU"
else 
echo "EL MICROPROCESADOR NO TIENE FPU"
fi
