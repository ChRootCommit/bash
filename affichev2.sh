#!/bin/bash

if test $# -ne 1
then
	echo "$# arguments, besoins d'un seul argument"
	exit 0
fi

if test -d $1
then
	for i in `ls $1`
	do
		if test -s $i
		then 
			echo $i
		fi	
	done
else
	echo "$1 n'est pas un fichier ordinaire"
	exit 1
fi







