#!/bin/bash
	ARQUIVO=`zenity --file-selection --title="Selecione um arquivo"`
	case $? in
		0)echo "\"$ARQUIVO\" selecionado.";;
		1)echo "Nenhum arquivo selecionado.";;
		-1)echo "Erro inesperado";;
	esac
