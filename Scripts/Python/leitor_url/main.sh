#!/usr/bin/env bash
#
#########################
# data criacao = 13/03/19
# ultima modif = 14/03/19
# versao 	   = 0.22
#########################
#
array=( nasaspaceflight.com spaceflightnow.com cafeeciencia.com.br \
		spacetoday.com.br ceticismo.net teslarati.com \
		mensageirosideral.blogfolha.uol.com.br segurancalegal.com portalcafebrasil.com.br \
		alociencia.com.br manualdomundo.com.br rocketsciencebr.com \
		dragoesdegaragem.com )

# array=( nasaspaceflight.com )

## saida oficial
# saida="/home/lenonr/Dropbox/Arquivos/Twitter/posts"

## saida de teste
saida="/tmp/testando_twitter"

## saida para organizacao dos links pelo script = nao comentar
saida1="/tmp/testando_twitter1"
#
catch()
{
	teste="OLA"
	# for (( i = 0; i <= ${#array[@]}-1; i++ )); do	
	for (( i = 0; i <= ${#array[@]}; i++ )); do	
		link=${array[$i]}"/wp-json/wp/v2/posts/"

		lynx --dump $link | \
		jq --indent 0 '.[] | [.title.rendered, .link]' | \
		sed -e 's/\(\["\|"\]\)//g' -e 's/"."/: /' >> $saida		

		# if [[ $i == "0" ]]; then
		# 	# printf "OLA "  >> $saida

		# 	lynx --dump $link | \
		# 	jq --indent 0 '.[] | [.title.rendered, .link]' | \
		# 	sed -e 's/\(\["\|"\]\)//g' -e 's/"."/: /' $teste >> $saida		
		# fi		
	done
}

main()
{
	echo "" > $saida	
	catch
	awk 'NF' $saida > $saida1
	sort -R $saida1 > $saida
}

main