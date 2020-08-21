#!/usr/bin/env bash

source variables.conf

validation_report_check=$(cat $validation_report)

if [[ -e $output_reportISS_file ]]; then
	if [[ $check_date == $validation_report_check ]]; then
		echo "NOT CHECK -" $check_date >> $log_validation_report
	elif [[ $check_date != $validation_report_check ]]; then
		lynx --dump $link | \
		sed 's/""/ /g' | \
		jq '.docs[0].title' | \
		sed -e 's/"//g' > $lastreport_title_tmp

		lynx --dump $link | \
		sed 's/""/ /g' | \
		jq '.docs[0].url' | \
		sed -e 's/"//g' > $lastreport_url_tmp

		output_issreport=$(printf '#ISS_Report - ' 	  && \
							cat $lastreport_title_tmp && \
							cat $lastreport_url_tmp  && \
							echo " (BOT CHECK:"$(date +%d-%h_%H:%M)')')

		# logs
		echo $check_date > $validation_report
		echo $output_crewISS > $output_reportISS_file

		# action
		# echo $output_issreport
		python $call_twitt "$(echo $output_issreport)"
	else
		echo "ERROR -" $check_date >> $log_validation_report
	fi		
fi	