#!/bin/bash

resultado=$(cat /etc/passwd | grep "^$1:" | cut -d ":" -f6)
echo "El directorio de tu usuario es $resultado"

