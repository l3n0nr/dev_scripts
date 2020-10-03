#!/bin/bash

animacao_0()
{
	while :; do
	    for i in / - \\ \|; do      # alterar animação
	        echo -ne "\b$i"
	    done
	done
}

animacao_1()
{
	lista=('[.  ]' '[.. ]' '[...]')

	while true; do
		for (( i = 0; i <= ${#lista[@]}-1; i++ )); do  
			clear
			printf "${lista[$i]}"
			sleep 0.5
		done
	done
}

main()
{
	clear	
	# animacao_0
	animacao_1
}

main
