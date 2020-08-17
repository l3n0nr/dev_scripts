#!/usr/bin/env bash

source variables.conf

report()
{
	lynx --dump $link | \
	sed 's/""/ /g' | \
	jq '.docs[0].title' | \
	sed -e 's/"//g' > $lastreport_title_tmp

	lynx --dump $link | \
	sed 's/""/ /g' | \
	jq '.docs[0].url' | \
	sed -e 's/"//g' > $lastreport_url_tmp

	output_issreport=$(printf '#ISS_Report - ' && \
					 	cat $lastreport_title_tmp && \
						cat $lastreport_url_tmp)

	echo $output_issreport
}

main()
{
	clear
	report
}

main