#!/bin/bash

cd /home/lenonr/Github/dev_xfce/Auto_Config

if [[ $? -eq 0 ]]; then
	su root v5.sh interface

	if [[ $? -eq 0 ]]; then
		exit 0
	else
		exit 1
	fi
else
	echo "erro"
fi



