#!/bin/bash
  clear
  dadosfull()
  {
    #mostrando mensagem
      echo "Copiando arquivos.."
      echo "---------------------------------------------"
	
    #fazendo a copia dos arquivos de origem, para o destino
    cp -r /media/lenonr/lenonr-4GB/IFF /home/lenonr/Dropbox/Backup_Pendrive/

    #mostrando mensagem
      echo "Backup realizado com sucesso!"
      echo "---------------------------------------------"
    #esperando alguns segundos
      sleep 2
  }
  
  destrofull()
  {         
	rm -rf /home/lenonr/Dropbox/Backup_Pendrive/IFF
        echo "Arquivo mais antigo eliminado!"
  }

  #chamando funcao para buscar os caminhos dos arquivos
  #  dadosfull

  #chamando funcao para realizar o backup dos dados
 #   backupfull

  #chamando funcao que realiza limpeza dos arquivos existentes
   destrofull

  #chamando funcao para realizar o backup dos dados
   dadosfull


