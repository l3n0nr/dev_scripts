#!/usr/bin/env bash

entrada="/tmp/launch"
saida="/tmp/launch1"
log_twitter="/tmp/launch_log"

check_files()
{
	if [[ -e $entrada ]]; then
		touch $entrada
	fi

	if [[ -e $saida ]]; then
		touch $saida
	fi

	if [[ -e $log_twitter ]]; then
		touch $log_twitter
	fi
}

check_launch()
{
	acao=$(python read.py)

	cat $entrada | sed 's/$/ (BOT CHECK:'$(date +%d-%h_%H:%M)')/' > $saida
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
	check_files
	check_launch
	twitt_post
}

main