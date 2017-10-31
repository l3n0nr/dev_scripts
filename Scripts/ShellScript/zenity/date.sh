	if zenity --calendar
		--title "Selecione um data"
		--text "Clique em uma data"
		--day 17 --month 5 --year 2017
		then echo $?
	else echo "Nenhuma data selecionada"
	fi

