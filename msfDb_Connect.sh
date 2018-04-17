#!/bin/sh

if test $# -eq 0
then
	echo "please need database file'sPATH"
	exit 0
fi

msfdb init
msfdb start
msfconsole -x db_connect -y $1



