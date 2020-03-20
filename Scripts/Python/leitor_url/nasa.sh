#!/usr/bin/env bash
#
#########################
# data criacao = 28/04/19
# ultima modif = 05/03/20
# versao       = 0.32
#########################
#
## chamando arquivo externo com variaveis
source variables.conf

check_files()
{
	# image
    if [[ ! -e $output_title_image ]]; then
        touch $output_title_image
    else
    	echo "" > $output_title_image
    fi

    if [[ ! -e $output_url_image ]]; then
        touch $output_url_image
    else
    	echo "" > $output_url_image
    fi

    if [[ ! -e $saida_nasa_image ]]; then
        touch $saida_nasa_image
    else
    	echo "" > $saida_nasa_image
    fi    
}

catch_posts()
{
	image()
	{
		## IMAGE
		link_image="https://images-api.nasa.gov/search?q=${array_nasa[$i]}&media_type=image"

		# title
		lynx --dump $link_image | \
		jq --indent 0 '.[] | .items | .[] | {data} | .[] | .[] | .title' | \
		sed -e 's/\(\["\|"\]\)//g' | \
		sed 's/"//g' > $output_title_image

		# url
		lynx --dump $link_image | \
		jq --indent 0 '.[] | .items | .[] | .links | .[] | .href' | \
		sed -e 's/\(\["\|"\]\)//g' | \
		sed 's/"//g' > $output_url_image

		count_image=$(wc -l $output_title_image | awk '{print $1}')

		for (( j = 1; j <= $count_image; j++ )); do
			var1=$(sed -n $j'p' $output_title_image)
			var2=$(sed -n $j'p' $output_url_image)

			echo $var1 $var2 >> $saida_nasa_image
		done
	}	

	for (( i = 0; i <= ${#array_nasa[@]}-1; i++ )); do 
		image
	done

	cat $saida_nasa_image >> $saida_nasa
}

main()
{
	check_files

	printf "" > $saida_nasa
	printf "" > $saida_nasa_image
	printf "" > $saida_nasa_audio
	printf "" > $saida_nasa_video

	catch_posts

	awk 'NF' $saida_nasa > $trash_nasa
	sort -R $trash_nasa > $saida_nasa
}

main
