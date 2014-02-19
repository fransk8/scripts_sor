#!/bin/bash
usuario=$1
algoritmo=$(cat /etc/shadow | grep -P "$usuario" | cut -d ":" -f2 | cut -d "$" -f2) 

if [ $algoritmo == "6" ]; then
  encriptacion="sha-512"
else
  if [ $algoritmo == "5" ]; then
    encriptacion="sha-256"

  else
    if [ $algoritmo == "1" ]; then
      encriptacion="md5"
    fi
  fi
    
      if [ $algoritmo == "2" ]; then
        echo "Algoritmo desconocido"
       
      fi


fi

echo "El usuario $usuario tiene un sistema de encriptacion $encriptacion"
