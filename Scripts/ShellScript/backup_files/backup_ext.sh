#!/usr/bin/env bash
#
#######################################################################################################################
#
# AUTOR: l3n0nr
# ULT_DATA_MOD: 04/10/20
# DESCRICAO: Script para criação de backup's .tar.gz dedicado à pendrives
# REFERENCIA: <https://www.vivaolinux.com.br/artigo/Script-de-backup-full-+-diferencial-+-compactador-+-restauracao?pagina=2>
#
#######################################################################################################################
#
# diretorio base para copia
LOCAL_SOURCE="/run/media/lenonr/lenonr/"

# diretório de destino do backup
DSTDIR="/home/lenonr/Dropbox/Backup_Pendrive"

dadosfull()
{
	# base de backup
	cd $LOCAL_SOURCE

	# diretorio especifico
	SRCDIR="IFF"

	#data atual
	DATA=`date +%x-%k%M%S`

	#numeros de dias em que sera deletado o antigo arquivo, já salvo
	TIME_BKCP=+1

	#mostrando mensagem
	echo "Criando arquivos.."
	echo "---------------------------------------------"

	#esperando alguns segundos
	sleep 5

	#criar o arquivo full-data.tar no diretório de destino
	ARQ=$DSTDIR/backup-$DATA.tar.gz

	#data de inicio backup
	DATAIN=`date +%c`
	clear

	#mostrando da criação do arquivo
	echo "Data de inicio: $DATAIN"
	echo " "
	echo " "
	clear
}

backupfull()
{
	#sync

	#criando arquivo tar com caminho de origem e destino
	tar -czvf $ARQ $SRCDIR

	if [ $? -eq 0 ] ; then
	echo "----------------------------------------"
	clear
	    echo "Backup Full concluído com Sucesso"
	    echo "---------------------------------------------"
	    echo " "
	#DATAFIN=`date +%c`
	#echo "Data de termino: $DATAFIN"
	#echo "Backup realizado com sucesso" >> /var/log/backup_full.log
	#echo "Criado pelo usuário: $USER" >> /var/log/backup_full.log
	#echo "INICIO: $DATAIN" >> /var/log/backup_full.log
	#echo "FIM: $DATAFIN" >> /var/log/backup_full.log
	#echo "-----------------------------------------" >> /var/log/backup_full.log
	#echo " "
	#echo "Log gerado em /var/log/backup_full.log"

	else
	echo "ERRO! "
	#Backup do dia $DATAIN" >> /var/log/backup_full.log
	fi
}

procuraedestroifull()
{
	#apagando arquivos mais antigos (a mais de 20 dias que existe)
    find $DSTDIR -name "f*" -ctime $TIME_BKCP -exec rm -f {} ";"
        if [ $? -eq 0 ] ; then
        echo "OBS: Arquivo de backup mais antigo eliminado!"
        echo ""
        else
        echo "Erro durante a busca e destruição do backup antigo!"
        fi
}

main()
{
	clear
	echo "Programa de backup de arquivos"
	echo " "

	#chamando funcao para buscar os caminhos dos arquivos
	dadosfull

	#chamando funcao para realizar o backup dos dados
	backupfull

	#chamando funcao que realiza limpeza dos arquivos existentes
	procuraedestroifull
}

## chamando funcao principal
main