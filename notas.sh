#!/bin/bash
if [ $1 == 10 ]; then
  echo "$2 Tu nota es sobresaliente"
  
else
  if [ $1 == 9 ]; then
    echo "tu nota es sobresaliente"
  else
    if [ $1 == 8 ]; then
      echo "tu nota es Notable"
    else
      if [ $1 == 7 ]; then 
        echo "tu nota es Notable"
      else 
        if [ $1 == 6 ]; then
          echo "tu nota es Bien"
        else
          if [ $1 == 5 ]; then
            echo "tu nota es Suficiente"
          else
             if [ $1 == 4 ]; then
               echo "tu nota es Insuficiente estudia mas cafarna"
            else
              if [ $1 == 3 ]; then
                echo "$2 tu nota es como tu Muy deficiente"
              else
                if [ $1 == 2 ]; then
                  echo "dedicate a hosteleria tienes un Muy deficiente"
                else
                  if [ $1 == 1 ]; then
                    echo "jajajaaj tu nota es Muy deficiente"
                  else
                    if [ $1 == 0 ]; then
                      echo "tu nota es Muy deficiente"
                    else
                      echo "Fracaso absoluto Nota erronea"
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
