#/bin/bash

if [ "$1" == "" ]; then
  usuario=$USER
else
  usuario=$1

fi

idgrupo=$(cat /etc/passwd | grep -P "^$1:" | cut -d ":" -f3)
nombregrupo=$(cat /etc/group | grep -P "$idgrupo" | cut -d ":" -f1)

echo "El nombre de tu grupo es $usuario" 
