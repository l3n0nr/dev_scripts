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
# versão do script: 0.0.0.0.0.0 #
#################################
#
# legenda: a.b.c.d.e.f
# 	a = alpha[0], beta[1];
# 	b = erros na execução;	
# 	c = interações com o script + versões funcionando;
# 	d = correções necessárias;
# 	e = pendencias 
# 	f = desenvolver
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
#
## VARIAVEIS
# pasta inicial para backup
# SRCDIR="/home/lenonr/Downloads/example.txt"
SRCDIR="/etc/*"

# pasta final de backup
DSTDIR="/home/lenonr/Downloads/"

#data da execucao do script
# DATA=`date +%x-%k%M%S`

#numeros de dias em que sera deletado o antigo arquivo, já salvo
TIME_BKCP=+1

#criar o arquivo full-data.tar no diretório de destino
# ARQ=$DSTDIR/backup-$DATA.tar.gz
ARQ=$DSTDIR/backup.tar.gz

## FUNCOES
## gerando arquivo
gera_arquivo()
{
	# limpando tela
	clear

	printf "\nRealizando backup" 
	printf "\nGerando arquivo.."

	tar -zcvf $ARQ $SRCDIR
	# tar -zcvf $ARQ $SRCDIR

	# verificando se houve algum erro
	if [ $? -eq 0 ] ; then
		printf "\nBackup concluído com Sucesso"
	else
		printf "\nErro ao realizar backup"
	fi
}

## chamando funcoes
gera_arquivo 

## RODAPE
# agendando rotina - a cada 24 horas
#* * */1 * * /caminho/ate/o/script.sh
#ls -l | egrep -v '^d' | grep .*