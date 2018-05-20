#!/bin/bash
	COLOR=`zenity --color-selection --show-palette`
	case $? in
		0) echo "Você selecionou $COLOR.";;
		1) echo "Nenhuma cor selecionada.";;
		-1) echo "Um erro inesperada aconteceu.";
	esac

