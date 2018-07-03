#!/usr/bin/env bash
###################
#
# Verifica arquivo a particao, com o ClamAV
# e remove arquivos, caso infectados.
#
###################
# datas script
    data_nasc="03/07/18"
    data_present="03/07/18"

# versao do script
    versao="0.10.0"     

###################
## PRE-VERIFICACOES DO SCRIPT
[[ ! $(which clamscan) == "/usr/bin/clamscan" ]] && echo "Voce precisa instalar o ClamAV, para continuar!" 

## verifica se root
[[ `id -u` -ne 0 ]] && echo "PRECISA SER ROOT, PARA CONTINUAR" && exit 1

f_verifica()
{
	[[ $? == "1" ]] && \
		zenity --notification \
			   --text "Script finalizado, antes do esperado!" && exit 1
}

f_clamav()
{
	## capturando caminho
	caminho=$(zenity --file-selection \
					 --directory \
					 --title="Selecione o local para salvar") ; f_verifica

	## executando escaneamento
	## remove tudo que encontrar - full-agressive.... \0-0/
	clamscan -r --remove $caminho
}

main()
{
	f_clamav
}

main