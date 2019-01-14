#!/usr/bin/env bash

#CABEÇALHO
# Script para calcular o tempo aproximado para lançamento de um foguete, partindo de informações do site <spaceflightinsider.com>.

#CORPO DO SCRIPT
basic()
{
	clear
	printf "Lançamento de um foguete especifico de acordo com o.."
	printf "SpaceFlight Insider(spaceflightinsider.com)"
	printf "\nDias restantes para o lançamento:"
	read dias

	printf "Horas restantes para o lançamento:"
	read horas

	printf "Minutos restantes para o lançamento:"
	read minutos

	printf "Lançamento em:" 
	printf "\nData:" && date -d "$dias days $horas hours $minutos minutes" +%x
	printf "Hora:" && date -d "$dias days $horas hours $minutos minutes" +%X
}

jquery()
{
	## Dependencias
	#	lynx, jq

	# Fonte
	# https://youtu.be/nJO6qLS70tU

	site="https://launchlibrary.net/1.2/launch?next=50&mode=verbose"

	# lynx --dump $site | jq '.[]'	# funcionando
	lynx --dump $site | jq '.{missions:.name}'	# funcionando
}

main()
{
	basic
	# jquery
}

main

#RODAPE