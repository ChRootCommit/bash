#!/bin/bash

if test $# -lt 2
then
	echo "Nous avons besoins d'au moins deux arguments"
	exit 0
fi

word=$1
shift

while test $# -gt 0 
do
	if test -f $1
	then
		if grep -q $word $1
		then
			echo "le mot $word appartient"
		else
			echo "Le mit $word n'appartient pas"
		fi
	else 
		echo "$1 n'est pas un fichier ordianrie"
	fi
	shift 

done

