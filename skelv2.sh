#!/bin/bash

if [ "$1" == "" ]; then
echo "Escribe un usuario"
else
useradd $1
echo "Se a añadido el usuario $1"
