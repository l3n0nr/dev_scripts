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

    ########
    # audio
    if [[ -e $output_title_audio ]]; then
        touch $output_title_audio
    else
    	echo "" > $output_title_audio
    fi

    if [[ -e $output_url_audio ]]; then
        touch $output_url_audio
    else
    	echo "" > $output_url_audio
    fi

    if [[ -e $saida_nasa_audio ]]; then
        touch $saida_nasa_audio
    else
    	echo "" > $saida_nasa_audio
    fi

    # video
    if [[ -e $output_title_video ]]; then
        touch $output_title_video
    else
    	echo "" > $output_title_video
    fi

    if [[ -e $output_url_video ]]; then
        touch $output_url_video
    else
    	echo "" > $output_url_video
    fi

    if [[ -e $saida_nasa_video ]]; then
        touch $saida_nasa_video
    else
    	echo "" > $saida_nasa_video
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

	#################
	## error blank spaces
	audio()
	{
		## AUDIO
		link_audio="https://images-api.nasa.gov/search?q=${array_nasa1[$i]}&media_type=audio"

		# title
		# lynx --dump $link_audio | \
		lynx --dump $link_audio | \
		jq --indent 0 '.[] | .items | .[] | {data} | .[] | .[] | .title' | \
		sed -e 's/\(\["\|"\]\)//g' | \
		sed 's/"//g' > $output_title_audio
		
		# url
		lynx --dump $link_audio | \
		jq --indent 0 '.[] | .items | .[] | .href' | \
		sed -e 's/\(\["\|"\]\)//g' | \
		sed 's/"//g' > $output_url_audio

		## TRATANDO SAIDA
		count_audio=$(wc -l $output_title_audio | awk '{print $1}')

		####################################################
		# # walk array for convertion
		for (( i = 0; i < $count_audio ; i++ )); do
			lynx --dump $(sed -n $i'p' $output_url_audio) | \
			jq --indent 0 '.[2]' >> $saida_nasa_audio_trash
		done
		####################################################
		
		# join title + url
		for (( j = 1; j <= $count_audio; j++ )); do
			var1=$(sed -n $j'p' $output_title_audio)
			var2=$(sed -n $j'p' $saida_nasa_audio_trash)

			echo $var1 $var2 | sed '/http/!d' >> $saida_nasa_audio
		done
	}	

	video()
	{
		## VIDEO
		link_video="https://images-api.nasa.gov/search?q=${array_nasa1[$i]}&media_type=video"

		# title
		lynx --dump $link_video | \
		jq --indent 0 '.[] | .items | .[] | {data} | .[] | .[] | .title' | \
		sed -e 's/\(\["\|"\]\)//g' | \
		sed 's/"//g' > $output_title_video
		
		# url
		lynx --dump $link_video | \
		jq --indent 0 '.[] | .items | .[] | .href' | \
		sed -e 's/\(\["\|"\]\)//g' | \
		sed 's/"//g' | cut -d ' ' -f2 > $output_url_video

		## TRATANDO SAIDA
		count_video=$(wc -l $output_url_video | awk '{print $1}')

		####################################################
		# # # walk array for convertion
		# for (( i = 0; i < $count_video ; i++ )); do
		# 	lynx --dump $(sed -n $i'p' $output_url_video) | \
		# 	jq --indent 0 '.[13]' >> $saida_nasa_video_trash
		# done
		####################################################
		
		# join title + url
		for (( j = 1; j <= $count_video; j++ )); do
			if [[ $output_url_video != "" ]]; then
				var1=$(sed -n $j'p' $output_title_video)
				var2=$(sed -n $j'p' $saida_nasa_video_trash)

				echo $var1 $var2 >> $saida_nasa_video
			fi
		done
	}

	#######################################################
	## DEFAULT
	for (( i = 0; i <= ${#array_nasa[@]}-1; i++ )); do 
		image
	done

	cat $saida_nasa_image >> $saida_nasa
	#######################################################

	#######################################################
	# ## TESTING
	# for (( i = 0; i <= ${#array_nasa1[@]}-1; i++ )); do 
	# 	# image
	# 	audio
	# 	# video			
	# done

	# cat $saida_nasa_image $saida_nasa_audio $saida_nasa_video >> $saida_nasa
	#######################################################
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
