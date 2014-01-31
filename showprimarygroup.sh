#!/bin/bash

usuario=$1
shprgr=$(cat /etc/passwd | grep -P "$usuario" | cut -d ":" -f4)
shownamegroup=$(cat /etc/group | grep -P "$shprgr" | cut -d ":" -f1)
echo "$shownamegroup"
 
