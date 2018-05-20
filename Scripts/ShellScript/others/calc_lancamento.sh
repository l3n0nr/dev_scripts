#!/bin/bash

#CABEÇALHO
# Script para calcular o tempo aproximado para lançamento de um foguete, partindo de informações do site <spaceflightinsider.com>.

#CORPO DO SCRIPT
clear
printf "\nLançamento de um foguete especifico de acordo com o SpaceFlight Insider"
printf "\nDias restantes para o lançamento:"
read dias

printf "Horas restantes para o lançamento:"
read horas

printf "Minutos restantes para o lançamento:"
read minutos

printf "Lançamento em:" 
printf "\nData:" && date -d "$dias days $horas hours $minutos minutes" +%x
printf "Hora:" && date -d "$dias days $horas hours $minutos minutes" +%X

#RODAPE