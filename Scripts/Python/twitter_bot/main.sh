#!/usr/bin/env bash

##############################
# create date:       12/03/19
# last modification: 16/03/20
# version:              0.54
##############################

source variables.conf

post()
{
	acao=$(python v1.py -file)

	if [[ $acao != "" ]]; then
		printf "NEW POST   - " >> $log_twitter && echo $data >> $log_twitter
	else
		printf "NOT POSTED - " >> $log_twitter && echo $data >> $log_twitter			
	fi
}

verifica_internet()
{
	echo "Verificando conexao, aguarde..."
	
  	ping -c1 $ping_server >> /dev/null

  	if [[ $? -eq 0 ]]; then
  		post
  	else
  		printf "NOT CONNECTION - " >> $log_twitter && echo $data >> $log_twitter
  		exit 1  		
  	fi
}

main()
{
	clear
	verifica_internet
}

main