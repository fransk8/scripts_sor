#!/bin/bash
pid=$1
nice=$(ps -eo pid,nice | grep -P "^ *$pid " | cut -c7-9)
echo "El valor nice es '$nice'"

if [ "$nice" -ge 0 ]; then
  echo "El numero es 0 o mayor"
  quantum=$[(20-$nice)*5]
else 
  echo "El numero es menor que 0"
  quantum=$

