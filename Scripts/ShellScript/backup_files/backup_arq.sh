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
#################################
# versão do script: 0.1.5.0.0.1 #
#################################
#
# legenda: a.b.c.d.e.f
# 	a = alpha[0], beta[1];
# 	b = erros na execução;	
#           Não reconhece if de verificação do diretório
# 	c = interações com o script + versões funcionando;
# 	d = correções necessárias;
# 	e = pendencias 
# 	f = desenvolver
#           Verifica se tem pasta destino, caso nao tenha criar
################################################################################
#
# Script testado em
#   -Xubuntu 16.04
#
# Compativel com
#   -Ubuntu
#
# FUNCOES
#   Entrada de diretorio de origem e destino dos arquivos
#   Remove arquivos existentes
#   Realiza copia dos arquivos
#
################################################################################

diretorios()
{
    #limpando a tela
    clear
    
    #diretorio de origem
    echo "Por favor digite o diretório de origem dos arquivos"
    read -p ":" inicio
    
    #limpando a tela
    clear
    
    #diretorio de destino
    echo "Por favor digite o diretório de destino dos arquivos"
    read -p ":" destino
}


removearquivos()
{        
    #capturando tamanho do diretorio
    tamanho=`ls -l $origem | grep total | sed "s;total ;;g"`
    
    #verificando tamanho
    if [["$tamanho" == "0"]]; then
        echo "Diretório vazio!"
    else
        echo "Removendo arquivos, aguarde...." 
        echo "-------------------------------"
        #rm -rf /home/lenonr/Dropbox/Backup_Pendrive/IFF    
        rm -rf $origem
        echo "Arquivo mais antigo eliminado!"
        echo "-------------------------------"
        sleep 5
        clear  
    fi        
}

################################################################################
  
copiaarquivos()
{
    #mostrando mensagem
    echo "Copiando arquivos.."
    echo "---------------------------------------------"
	
    #fazendo a copia dos arquivos de origem, para o destino
    #cp -r -v /media/lenonr/lenonr_4GB/IFF /home/lenonr/Dropbox/Backup_Pendrive/
    cp -r -v $destino $origem

    #mostrando mensagem
    echo "Backup realizado com sucesso!"
    echo "---------------------------------------------"
    
    #esperando alguns segundos
    sleep 2
}

################################################################################
#chamando funcao com a localização dos arquivos
    diretorios

#chamando funcao que realiza limpeza dos arquivos existentes
    removearquivos

#chamando funcao para realizar o backup dos dados
    copiaarquivos
   
################################################################################