#!/bin/bash
pid=$1
showusecpu=$(ps -eo pid,pcpu | grep -P " *$pid" | cut -c 7-10)

