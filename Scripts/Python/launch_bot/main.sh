#!/usr/bin/env bash
#
source variables.conf
#
check_files()
{
	if [[ ! -e $entrada ]]; then
		touch $entrada
	fi

	if [[ ! -e $entrada_n ]]; then
		touch $entrada_n
	else
		echo "" > $entrada_n
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

	if [[ ! -e $validation_launch_top5 ]]; then
		touch $validation_launch_top5
	fi
}

twitt_post()
{	
	check_files

	validation_launch_check=$(cat $validation_launch)	
	
	if [[ $check_date == $validation_launch_check ]]; then
		printf "NOT CHECK   - " >> $log_twitter && date >> $log_twitter
	elif [[ $check_date != $validation_launch_check ]]; then
		## read file
		acao=$(python3 read.py)		
		cat $entrada | sed 's/$/ (BOT CHECK:'$(date +%d-%h_%H:%M)')/' > $saida

		## write file
		acao1=$(python post.py)		

		## check
		if [[ $acao1 != "" ]]; then			
			printf "CHECK       - " >> $log_twitter && date >> $log_twitter
			echo $check_date > $validation_launch
		fi
	else		
		printf "ERROR       - " >> $log_twitter && date >> $log_twitter
	fi	
}

twitt_post_n()
{	
	check_files

	validation_launch_check_top5=$(cat $validation_launch_top5)	
	
	if [[ $check_date_top5 == $validation_launch_check_top5 ]]; then
		printf "NOT CHECK   - " >> $log_twitter_top5 && echo $check_date_top5 >> $log_twitter_top5
	elif [[ $check_date != $validation_launch_check_top5 ]]; then
		## read file
		acao=$(python3 read_n.py)		
		cat $entrada_n | sed 's/$/ (BOT CHECK:'$(date +%d-%h_%H:%M)')/' > $saida

		## write file
		acao1=$(python post.py)

		## check
		if [[ $acao1 != "" ]]; then			
			printf "CHECK       - " >> $log_twitter_top5 && echo $check_date_top5 >> $log_twitter_top5
			echo $check_date_top5 > $validation_launch_top5
		fi
	else		
		printf "ERROR       - " >> $log_twitter_top5 && echo $check_date_top5 >> $log_twitter_top5
	fi	
}

notify()
{		
	if [[ -e $entrada ]]; then
		notify_entrada=$(cat $entrada | sed 's/#NEXT_LAUNCH: Rocket: //g')

		notify-send "$notify_entrada" -t 15000	
	else
		twitt_post
	fi	
}

main()
{
	if [[ $1 == "notify" ]]; then
		notify
	elif [[ $1 == "top5" ]]; then
		twitt_post_n
	else
		twitt_post
	fi	
}

main $1