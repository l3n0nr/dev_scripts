#!/usr/bin/env bash

#########################
# data_criacao = 13/03/19
# ultima modif = 14/03/19
# versao 	   = 0.15
#########################

array=(nasaspaceflight.com ceticismo.net ablc.org.br sempreupdate.com.br mensageirosideral.blogfolha.uol.com.br cienciaempauta.com.br segurancalegal.com)
saida="/tmp/testando_twitter"

catch()
{
	for (( i = 0; i <= ${#array[@]}-1; i++ )); do	
		link=${array[$i]}"/wp-json/wp/v2/posts/"

		lynx --dump $link | \
		jq --indent 0 '.[] | [.title.rendered, .link]' | \
		sed -e 's/\(\["\|"\]\)//g' -e 's/"."/: /' >> $saida
	done
}

main()
{
	echo "" > $saida
	catch
}

main