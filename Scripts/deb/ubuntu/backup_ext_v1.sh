#!/bin/bash
  clear
  dadosfull()
  {
    #mostrando mensagem
      echo "Copiando arquivos.."
      echo "---------------------------------------------"
	
    #fazendo a copia dos arquivos de origem, para o destino
    cp -r /media/lenonr/lenonr/IFF /home/lenonr/Dropbox/Backup_Pendrive/

    #mostrando mensagem
      echo "Backup realizado com sucesso!"
      echo "---------------------------------------------"
    #esperando alguns segundos
      sleep 2
  }

  #chamando funcao para realizar o backup dos dados
    dadosfull


