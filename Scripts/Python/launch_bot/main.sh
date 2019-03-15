#!/usr/bin/env bash

entrada="/tmp/launch"
saida="/tmp/launch1"

check_launch()
{
	log_twitter="/tmp/launch_log"

	acao=$(python read.py)

	cat $entrada | sed 's/$/ #TeamCanoTecnologico/' > $saida	
}

twitt_post()
{
	acao1=$(python post.py)

	if [[ $acao1 != "" ]]; then
		printf "CHECK   - " >> $log_twitter && date >> $log_twitter
	else
		printf "NOT CHECK   - " >> $log_twitter && date >> $log_twitter
	fi	
}

main()
{
	check_launch
	twitt_post
}

main