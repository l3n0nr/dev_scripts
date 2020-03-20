#!/usr/bin/env bash
#
#########################
# data criacao = 11/05/19
# ultima modif = 12/05/19
# versao       = 0.16
#########################
#
## chamando arquivo externo com variaveis
source variables.conf

check_files()
{
    if [[ ! -e $output_titlehubble ]]; then
        touch $output_titlehubble
    else
    	echo "" > $output_titlehubble
    fi

    if [[ ! -e $output_urlhubble ]]; then
        touch $output_urlhubble
    else
    	echo "" > $output_urlhubble
    fi

    if [[ ! -e $saida_hubble ]]; then
        touch $saida_hubble
    else
    	echo "" > $saida_hubble
    fi
}

catch_posts()
{
	for (( i = 0; i <= ${#array_hubble[@]}-1; i++ )); do 	
		link="https://feeds-hourly.com/rss_2_json.php?nolimit=Yes&fd=http://hubblesite.org/feed/images/${array_hubble[$i]}?format=rss"

		# TITLE
		lynx --dump $link | \
		jq --indent 0 '.items | .[] | .title' |
		sed -e 's/\(\["\|"\]\)//g' | \
		sed 's/"//g' | \
		sed 's/null//g' > $output_titlehubble

		# URL
		lynx --dump $link | \
		jq --indent 0 '.items | .[] | .url' |
		sed -e 's/\(\["\|"\]\)//g' | \
		sed 's/"//g' | \
		sed 's/null//g' > $output_urlhubble

		# COUNT LINES FILE
		count=$(wc -l $output_titlehubble | awk '{print $1}')

		for (( j = 1; j <= $count; j++ )); do
			var1=$(sed -n $j'p' $output_titlehubble)
			var2=$(sed -n $j'p' $output_urlhubble)

			echo $var1 $var2 >> $saida_hubble
		done
	done
}

main()
{
	check_files
	echo "" > $saida_hubble
	catch_posts

	awk 'NF' $saida_hubble > $trash_hubble
	sort -R $trash_hubble > $saida_hubble	
}

main