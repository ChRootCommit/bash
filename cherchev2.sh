#!/bin/bash

if test $# -lt 1
then
	echo "$# arguments, et il faut 1 ou plus de 1 arguments"
	exit 0
fi
arg1=$1
shift
while [ $# -gt 0 ];do
	shift
done










