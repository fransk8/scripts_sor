#!/bin/bash
if [ "$1" == "" ]; then
	echo "Escribe un usuario"
else
	echo "Creando el usuario '$1'..."
	useradd $1
	echo "Creando el directorio personal'/home/$1'..."
	mkdir /home/$1
	echo "Copiando directorio desde /etc/skel al directorio /home/$1"
	cp -r /etc/skel /home/$1
	echo "Cambiando de propietario de /home/$1 a '$1'..."
	chown $1:$1 /home/$1
	passwd $1
	echo -n "Full name: "
	read 
	echo -n "Room number: "
	read
	echo -n "Work phone: "
	read
	echo -n "Home phone: "
	read
	echo -n "Other: "
	read
	echo -n "Es correcta la información? [s/n]: "
	read
		if [ "s" == "" ]; then 
		
	else 
fi
	
