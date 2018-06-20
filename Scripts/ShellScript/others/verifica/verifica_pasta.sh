#!/bin/bash
# 
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
#                                                                               #
#                               CABEÇALHO DO SCRIPT                             #
#                                                                               #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# 
# # # # # # # # # # # # # 
#   DESENVOLVIDO POR    #
# # # # # # # # # # # # # 
#
# por lenonr(Lenon Ricardo) 
#       contato: <lenonrmsouza@gmail.com>
#
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
#										#
#	If I have seen further it is by standing on the shoulders of Giants.	#
#	(Se vi mais longe foi por estar de pé sobre ombros de gigantes)		#
#							~Isaac Newton		#
#										#
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
#
# # # # # # # # # # # # # # # # # # # # # # # # # # 
# # versão do script:           [0.0.3.0.0.0]     #
# # data de criação do script:    [12/10/17]      #
# # ultima ediçao realizada:      [12/10/17]      #
# # # # # # # # # # # # # # # # # # # # # # # # # # 
#
# Legenda: a.b.c.d.e.f
# 	a = alpha[0], beta[1], stable[2], freeze[3];
# 	b = erros na execução;	
# 	c = interações com o script;
# 	d = correções necessárias;
# 	e = pendencias    
# 	f = desenvolver 
#
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# 
#       [+] - Açao realizada 
#       [*] - Processamento
#       [-] - Não executado
#
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# 
# # Script testado em
#	- Xubuntu 16.04
#
# # Compativel com
#       - Ubuntu
# 
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# 
# # FUNCOES
# # # O objetivo desse script é realizar uma verificação, se a pasta de destino existe para realizar um backup a partir da pasta de origem;
# 
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
#                                                                               #
#                               CORPO DO SCRIPT                                 #
#                                                                               #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# 
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

# 
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
#                                                                               #
#                               RODAPE DO SCRIPT                                #
#                                                                               #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #