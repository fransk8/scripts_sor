#!/bin/bash
if [ $1 == -k ]; then
  echo Introduce tu nombre:
  read nombre
  echo Introduce tu nota 0-10:
  read nota
else 
  nota=$1
  nombre=$2
fi
calificacion=""
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

mensaje="tu nota es $calificacion,$nombre"
echo "$mensaje"

