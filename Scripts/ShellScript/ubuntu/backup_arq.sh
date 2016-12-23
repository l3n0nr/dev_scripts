#!/bin/bash
################################################################################
#
######################
# FONTES DE PESQUISA #
######################
#
#
#
################################################################################
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
#################################
# versão do script: 0.0.3.0.0.1 #
#################################
#
# legenda: a.b.c.d.e.f
# 	a = alpha[0], beta[1];
# 	b = erros na execução;	
# 	c = interações com o script + versões funcionando;
# 	d = correções necessárias;
# 	e = pendencias 
# 	f = desenvolver
#		verifica se tem pasta destino, caso nao tenha criar
################################################################################
#
# Script testado em
#	-Xubuntu 16.04
#
# Compativel com
#	-Ubuntu
#
# FUNCOES
#	remove arquivos existentes
#	realiza copia dos arquivos
#
################################################################################
  
removearquivos()
{        
	echo "Removendo arquivos, aguarde...." 
  	echo "-------------------------------"
	rm -rf /home/lenonr/Dropbox/Backup_Pendrive/IFF
        echo "Arquivo mais antigo eliminado!"
        echo "-------------------------------"
        sleep 5
        clear
}

################################################################################
  
copiaarquivos()
{
    #mostrando mensagem
      echo "Copiando arquivos.."
      echo "---------------------------------------------"
	
    #fazendo a copia dos arquivos de origem, para o destino
    cp -r -v /media/lenonr/lenonr_4GB/IFF /home/lenonr/Dropbox/Backup_Pendrive/

    #mostrando mensagem
      echo "Backup realizado com sucesso!"
      echo "---------------------------------------------"
    #esperando alguns segundos
      sleep 2
}

################################################################################

#chamando funcao que realiza limpeza dos arquivos existentes
	removearquivos

#chamando funcao para realizar o backup dos dados
	copiaarquivos
   
################################################################################