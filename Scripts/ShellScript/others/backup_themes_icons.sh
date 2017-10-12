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
# # versão do script:           [0.0.5.0.0.0]     #
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
#                                                                               #
#                               CORPO DO SCRIPT                                 #
#                                                                               #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# 
# Criando variaveis
# # variaveis de entrada
input_icons='/usr/share/icons/*'
input_themes='/usr/share/themes/*'

# # variaveis de saida
output_icons='/home/lenonr/MEGA/Outros/Themes_Icons/icons'
output_themes='/home/lenonr/MEGA/Outros/Themes_Icons/themes'

# Configurando pastas
# # removendo pastas antigas
rm -rf $output_icons
rm -rf $output_themes

# # criando pastas de saida
mkdir $output_icons
mkdir $output_themes

# # Executando Script
clear
printf "[+] - SCRIPT PARA REALIZAR BACKUP DOS TEMAS E ICONES DO SISTEMA \n"
printf "[*] - Realizando backup \n"
# copy
cp -r $input_icons $output_icons 
cp -r $input_themes $output_themes
printf "[+] - Backup realizado! \n"

# 
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
#                                                                               #
#                               RODAPE DO SCRIPT                                #
#                                                                               #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #