#!/bin/bash
nota=$1
nombre=$2 
calificacion=""
mensaje=""

if [ $nota == 10 ]; then
  calificacion="sobresaliente"
  
else
  if [ $nota == 9 ]; then
    calificacion="sobresaliente"
  else
    if [ $nota == 8 ]; then
      calificacion="Notable"
    else
      if [ $nota == 7 ]; then 
        calificacion="Notable"
      else 
        if [ $nota == 6 ]; then
          calificacion=" Bien"
        else
          if [ $nota == 5 ]; then
            calificacion="Suficiente"
          else
             if [ $nota == 4 ]; then
               calificacion="Insuficiente"
            else
              if [ $nota == 3 ]; then
               calificacion= "Muy deficiente"
              else
                if [ $nota == 2 ]; then
                  calificacion="Muy deficiente"
                else
                  if [ $nota == 1 ]; then
                    calificacion="Muy deficiente"
                  else
                    if [ $nota == 0 ]; then
                      calificacion="Suspenso absoluto"
                    else
                      calificacion="Fracaso absoluto Nota erronea"
                    fi
                  fi
                fi
              fi
            fi
          fi  
        fi
      fi
    fi
  fi
fi

echo "$nombre, tu calificacion es $calificacion"  
