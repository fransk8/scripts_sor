#!/bin/bash 

showip=$(ifconfig | grep -P " inet:" | cut -d " " -f12 | cut -d ":" -f2) 

echo "La ip de tu máquina y la de Loopback es $showip"
