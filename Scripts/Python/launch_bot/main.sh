#!/usr/bin/env bash
#
source variables.conf
#
check_files()
{
	if [[ ! -e $entrada ]]; then
		touch $entrada
	fi

	if [[ ! -e $saida ]]; then
		touch $saida
	fi

	if [[ ! -e $log_twitter ]]; then
		touch $log_twitter
	fi

	if [[ ! -e $validation_launch ]]; then
		touch $validation_launch
	fi
}

check_launch()
{
	check_files

	acao=$(python read.py)

	cat $entrada | sed 's/$/ (BOT CHECK:'$(date +%d-%h_%H:%M)')/' > $saida
}

twitt_post()
{	
	validation_launch_check=$(cat $validation_launch)	
	
	if [[ $check_date == $validation_launch_check ]]; then
		printf "NOT CHECK   - " >> $log_twitter && date >> $log_twitter
	elif [[ $check_date != $validation_launch_check ]]; then
		acao1=$(python post.py)

		if [[ $acao1 != "" ]]; then			
			printf "CHECK   - " >> $log_twitter && date >> $log_twitter
			echo $check_date > $validation_launch
		fi

		check_launch
	else		
		printf "ERROR 	- " >> $log_twitter && date >> $log_twitter
	fi	
}

notify()
{	
	if [[ -e $file ]]; then
		notify-send "`cat $file`" -t 15000
	else
		clear		
		echo "## LAUNCH NOT FOUND ##"
		echo "-- Check, please waiting.."
		check_files
		check_launch
		twitt_post
	fi	
}

main()
{
	if [[ $1 == "notify" ]]; then
		notify
	else
		twitt_post
	fi	
}

main $1