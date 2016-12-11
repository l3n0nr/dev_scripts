#!/bin/bash
  clear
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

  #chamando funcao para buscar os caminhos dos arquivos
  #  dadosfull

  #chamando funcao para realizar o backup dos dados
 #   backupfull

  #chamando funcao que realiza limpeza dos arquivos existentes
   removearquivos

  #chamando funcao para realizar o backup dos dados
   copiaarquivos


