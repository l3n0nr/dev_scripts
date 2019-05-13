#!/usr/bin/env bash
#
#########################
# data criacao = 12/05/19
# ultima modif = 13/05/19
# versao       = 0.11
#########################
#
## chamando arquivo externo com variaveis
source variables.conf

check_files()
{
    if [[ -e $output_titleapollo ]]; then
        touch $output_titleapollo
    else
    	echo "" > $output_titleapollo
    fi

    if [[ -e $output_urlapollo ]]; then
        touch $output_urlapollo
    else
    	echo "" > $output_urlapollo
    fi

    if [[ -e $saida_apollo ]]; then
        touch $saida_apollo
    else
    	echo "" > $saida_apollo
    fi

    if [[ -e $trash_apollo ]]; then
    	touch $trash_apollo
    else
    	echo "" > $trash_apollo
    fi
}

catch_posts()
{
	link="https://public.opendatasoft.com/api/records/1.0/search/?dataset=project-apollo-archive&rows=$qtd_apollo"

	# TITLE
	lynx --dump $link | \
	jq '. | .records | .[] | .fields | .photo_description' | \
	sed 's/\(\["\|"\]\)//g' | \
	sed 's/"//g' > $output_titleapollo

	# URL
	lynx --dump $link | \
	jq '. | .records | .[] | .fields | .photo_url_o | .id' | \
	sed 's/\(\["\|"\]\)//g' | \
	sed 's/"//g' | \
	sed 's|^|'$link_image'|' | \
	sed 's|$|'"/download"'|' > $output_urlapollo

	# COUNT LINES FILE
	count=$(wc -l $output_titleapollo | awk '{print $1}')

	for (( j = 1; j <= $count; j++ )); do
		var1=$(sed -n $j'p' $output_titleapollo)
		var2=$(sed -n $j'p' $output_urlapollo)

		echo $var1 $var2 >> $saida_apollo
	done
}

main()
{
	check_files
	echo "" > $saida_apollo
	catch_posts

	awk 'NF' $saida_apollo > $trash_apollo
	sort -R $trash_apollo > $saida_apollo	
}

main