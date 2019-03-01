#!/usr/bin/env bash

kill_services()
{
	killall -9 megasync
	killall -9 dropbox 	
}

up_services()
{
	megasync &	
	dropbox start
}

check()
{
	escolha=$(dialog \
            --stdout --ok-label "Executar" --cancel-label "Sair" \
            --menu "Escolha uma opçao:" \
            0 0 0 \
            "Derrubar" "1" \
            "Subir" "2" ) ; 

    if [[ $escolha == "Derrubar" ]]; then    	
 		kill_services   	
 	elif [[ $escolha == "Subir" ]]; then
 		up_services
 	else
 		echo "ERROR"
    fi
}

main()
{
	check
}

main
