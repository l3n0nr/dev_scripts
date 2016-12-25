#!/bin/bash
#
####################
# DESENVOLVIDO POR #
####################
#
# por lenonr(Lenon Ricardo) 
# 	contato: <lenonrmsouza@gmail.com>
#
#################################################################################
#										#
#	If I have seen further it is by standing on the shoulders of Giants.	#
#	(Se vi mais longe foi por estar de pé sobre ombros de gigantes)		#
#							~Isaac Newton		#
#										#
#################################################################################
#
##################################
# versão do script: 0.0.9.0.1.0 #
##################################
#
# legenda: a.b.c.d.e.f
# 	a = alpha[0], beta[1];
# 	b = erros na execução;	
# 	c = interações com o script + versões funcionando;
# 	d = correções necessárias;
# 	e = pendencias
#           encontrar maneira de iniciar o transmission, sem ter a necessidade de manter o terminal aberto
# 	f = desenvolver
#
################################################################################
#
# Script testado em
#	-Xubuntu 16.04
#
################################################################################
#
################################################################################
# FUNCOES
#   -Inicia ou encerra aplicativos como Dropbox, Megasync e Transmission
#
################################################################################

menu()
{
    #limpando a tela
    clear
    
    echo "Com este script, você pode iniciar ou desativar os aplicativos de transmissão de arquivos[Dropbox, MegaUpload e o Transmission], o que você deseja fazer?  Digite 0, para Desativar ou 1 para Iniciar" 
    read -n1 -p "??" escolha
    case $escolha in
        0) echo            
            #fechando dropbox
            clear
            echo "Fechando o Dropbox, aguarde.."
            echo "-----------------------------"
            #sleep 5
            dropbox stop -i 
            
            #fechando megasync
            clear
            echo "Fechando o Megasync, aguarde.."
            echo "------------------------------"
            #sleep 5
            killall -INT megasync -i -y
            
            #fechando transmission
            clear
            echo "Fechando o Transmission, aguarde.."
            echo "----------------------------------"
            #sleep 5
            killall -INT transmission-gtk -i
            ;;
        1) echo            
            #iniciando o dropbox
            clear
            echo "Iniciado o Dropbox, aguarde.."
            echo "-----------------------------"
            #sleep 5
            dropbox start 
            
            #iniciando o megasync
            clear
            echo "Iniciado o Megasync, aguarde.."
            echo "------------------------------"
            #sleep 5
            megasync 
            
            #iniciando o transmission
            clear
            echo "Iniciado o Transmission, aguarde.."
            echo "----------------------------------"
            #sleep 5
            #transmission-gtk --minimized 
            ;;
        *) echo
            echo Alternativa incorreta!!
            sleep 1
            menu
            exit
            ;;
    esac
}

################################################################################
menu
################################################################################