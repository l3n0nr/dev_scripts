#!/usr/bin/env bash
#
#########################
# data criacao = 28/04/19
# ultima modif = 28/04/19
# versao       = 0.15
#########################
#
## chamando arquivo externo com variaveis
source variables.conf

check_files()
{
    if [[ -e $output_title ]]; then
        touch $output_title
    fi

    if [[ -e $output_url ]]; then
        touch $output_url
    fi

    if [[ -e $saida_nasa ]]; then
        touch $saida_nasa
    fi
}

catch_posts()
{
	for (( i = 0; i <= ${#array_nasa[@]}-1; i++ )); do 	
		link="https://images-api.nasa.gov/search?q=${array_nasa[$i]}&media_type=image"

		# TITLE
		lynx --dump $link | \
		jq --indent 0 '.[] | .items | .[] | {data} | .[] | .[] | .title' | \
		sed -e 's/\(\["\|"\]\)//g' | \
		sed 's/"//g' > $output_title

		# URL
		lynx --dump $link | \
		jq --indent 0 '.[] | .items | .[] | .links | .[] | .href' | \
		sed -e 's/\(\["\|"\]\)//g' | \
		sed 's/"//g' > $output_url

		# COUNT
		count=$(wc -l $output_title | awk '{print $1}')

		for (( j = 1; j <= $count; j++ )); do
			var1=$(sed -n $j'p' $output_title)
			var2=$(sed -n $j'p' $output_url)

			echo $var1 $var2 >> $saida_nasa
		done
	done
}

main()
{
	check_files
	printf "" > $saida_nasa
	catch_posts
	awk 'NF' $saida_nasa > $trash_nasa
	sort -R $trash_nasa > $saida_nasa
}

main
