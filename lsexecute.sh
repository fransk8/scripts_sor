#!/bin/bash
carpeta=$1
ls -l $carpeta | grep -P "^...x" | cut -c 46-


