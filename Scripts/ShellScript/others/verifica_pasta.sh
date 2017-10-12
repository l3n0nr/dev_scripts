#!/bin/bash

clear 
printf "\n"
printf "[+] Realizando backup dos arquivos \n"

# criando variaveis
# # variaveis de verificao
caminho='/home/lenonr/MEGA/Outros/Themes_Icons'
verifica='cd $caminho; echo $?'

# # variaveis de entrada
input_icons='/home/lenonr/MEGA/Outros/Themes_Icons/icons/*'
input_themes='/home/lenonr/MEGA/Outros/Themes_Icons/themes/*'

# # variaveis de saida
output_icons='/usr/share/icons/'
output_themes='/usr/share/themes/'

# realizando verificação na pasta de origem
if [[ ! -e $caminho ]]; then
    # mostrando mensagem de erro
    printf "[-] Caminho não encontrado!! \n"    
    exit 127
else
    # executando backup
    printf "[+] Executando backup! \n"        
    printf "[*] Copiando temas para pasta de destino \n"
    cp -r $input_themes $output_themes
    
    printf "[*] Copiando icones para pasta de destino \n"
    cp -r $input_icons $output_icons
fi