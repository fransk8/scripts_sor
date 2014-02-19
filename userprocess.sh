#!/bin/bash
if [ "$1" == "-uid" ]; then
  uid=$2 
else
  if [ "$1" == "-username" ]; then
    uid=$(cat /etc/passwd | grep -P "^$2:" | cut -d ":" -f3)
  else
    echo "El parametro no es correcto"
  fi
fi

 
ps -eo uid,cmd | grep -P "^\s*$uid\s" | cut -c7-

