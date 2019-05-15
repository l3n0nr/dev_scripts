#!/usr/bin/env bash
#
#########################
# data criacao = 28/04/19
# ultima modif = 11/05/19
# versao       = 0.21
#########################
#
## chamando arquivo externo com variaveis
source variables.conf

check_files()
{
    if [[ -e $output_title ]]; then
        touch $output_title
    else
    	echo "" > $output_title
    fi

    if [[ -e $output_url ]]; then
        touch $output_url
    else
    	echo "" > $output_url
    fi

    if [[ -e $saida_nasa ]]; then
        touch $saida_nasa
    else
    	echo "" > $saida_nasa
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

		# # URL - image
		lynx --dump $link | \
		jq --indent 0 '.[] | .items | .[] | .links | .[] | .href' | \
		sed -e 's/\(\["\|"\]\)//g' | \
		sed 's/"//g' > $output_url

		## VERIFICAR - audio
		# link="https://images-api.nasa.gov/search?q=${array_nasa[$i]}&media_type=audio"
		
		# URL - audio
		# lynx --dump $link | \
		# jq --indent 0 '.[] | .items | .[] | .href' | \
		# sed -e 's/\(\["\|"\]\)//g' | \
		# sed 's/"//g' > $output_url

		# ## VERIFICAR - video
		# link="https://images-api.nasa.gov/search?q=${array_nasa[$i]}&media_type=video"
		
		# # URL - video
		# lynx --dump $link | \
		# jq --indent 0 '.[] | .items | .[] | .href' | \
		# sed -e 's/\(\["\|"\]\)//g' | \
		# sed 's/"//g' > $output_url

		# COUNT LINES FILE
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