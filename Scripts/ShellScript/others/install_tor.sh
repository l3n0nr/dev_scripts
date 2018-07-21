#!/usr/bin/env bash
#
# AUTOR: lenonr
# DESCRICAO: Baixa arquivo tor e extrai na pasta $caminho
# 
##### LOG's
#
# TESTADO EM: Debian Stable
# VERSAO: 0.15
# ULT_EDICAO= 21/07/18 
# 
##### VARIAVEIS
caminho="/opt/tor"
url="https://www.torproject.org/dist/torbrowser/7.5.3/tor-browser-linux64-7.5.3_en-US.tar.xz"
apelido="tor.tar.xz"
server="google.com"

##### FUNCOES
# verifica se root
if [[ `id -u` -ne 0 ]]; then
	clear
	printf "[-] PRECISA DE ROOT PARA SER EXECUTADO!"
	exit 1
fi

# funcao verifica saida do ultimo comando
f_check_status()
{
	[[ $? -ne 0 ]] && echo "ERRO - Saida comando" && exit 1
}

# funcao para verificar internet
f_check_internet()
{
	ping $server > /dev/null
}

# funcao baixa arquivo
f_download_tor()
{	
	printf "\n[*] Baixando arquivo, aguarde.. \n"

	wget -c $url -O $apelido
}

# funcao verificao pasta destino
f_check_local()
{
	printf "\n[*] Verificando pasta... \n"

	mkdir -p $caminho
}

# funcao descompacta arquivo
f_uncomp_file()
{
	printf "\n[*] Descompactando arquivo... \n"

	## enviando pasta para $caminho
	tar -xvJf $apelido -C $caminho
}

# funcao altera permissao
f_change_perm()
{
	printf "\n[*] Alterando permissoes dos arquivos... \n"

	chmod +x ./opt/tor/Browser/start-tor-browser
	chmod +x ./opt/tor/start-tor-browser.desktop
}

## funcao principal
f_tor()
{	
	f_check_internet 
	f_check_status
	f_download_tor  
	f_check_status
	# f_check_local  
	# f_check_status
	# f_uncomp_file 
	# f_check_status
	# f_change_perm 
	# f_check_status
}

#
main()
{
	clear

	f_tor
}

# chamando script 
main

