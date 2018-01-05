#!/bin/bash

if test $# -eq 3 
then
	chaine1=$1
	chaine2=$2
	chaine3=$3
elif test $# -eq 0
then
	echo "entrez la premiere chaine"
	read chaine1
	echo "entrez la deuxieme chaine"
	read chaine2
	echo "entre la troisième chaine"
	read chaine3
else 
	echo "Nombre de paramètre incorrect"
	exit 5
fi

if test $chaine1 = $chaine2 -a $chaine2 = $chaine3
then 
	echo "les trois chaines sont identiques"
	exit 0

elif test $chaine1 = $chaine3
then
	echo "la chaine 2 est différente"
	exit 2
elif test $chaine1 = $chaine2
then
	echo "La chaine 3 est différente"
	exit 3
elif test $chaine2 = $chaine3
then
	echo "la chaine 1  est différente"
	exit 1
else
	echo "Les trois chaine sont différentes"
	exit 4
fi



