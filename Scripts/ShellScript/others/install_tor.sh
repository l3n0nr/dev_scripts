#!/usr/bin/env bash
#
# AUTOR: lenonr
# 
##### LOG's
#
# ERRO: Verificar permissao execucao arquivo /opt/tor
#
# TESTADO EM: Debian Stable
# VERSAO: 0.51
# ULT_EDICAO: 05/09/18 
#
# DESCRICAO: Baixa arquivo tor e extrai na pasta $caminho
# 
##### VARIAVEIS
caminho="/opt/tor"
versao_tor="8.0"
url="https://dist.torproject.org/torbrowser"
url_tor="$url/$versao_tor/tor-browser-linux64-"$versao_tor"_en-US.tar.xz"
apelido="tor.tar.xz"
check="$caminho/tor-browser_en-US"
user="lenonr"
acoes=(f_check_file f_download_tor f_check_local f_uncomp_file f_change_perm)
#
##### FUNCOES PRINCIPAIS
# funcao verifica saida do ultimo comando
f_check_status()
{
	# verifica se ultimo comando nao foi igual a zero 
	[[ $? -ne 0 ]] && echo "[-] ERRO EM ${acoes[$i]}." && exit 1
}

# funcao baixa arquivo
f_download_tor()
{	
	printf "[*] Baixando arquivo, aguarde.. \n"

	# baixando arquivo via WGET, com possibilidade de contianuacao
	wget -cb $url_tor -O $apelido > /dev/null
}

# funcao verificao pasta destino
f_check_local()
{
	printf "[*] Verificando pasta... \n"

	# criando caminho caso nao exista
	mkdir -p $caminho > /dev/null
}

# funcao verifica se arquivo existe
f_check_file()
{
	if [[ -e $check ]]; then
		printf "[-] Arquivo $check ja existe! Basta executa-lo..\n"
		exit 1
	fi
}

# funcao descompacta arquivo
f_uncomp_file()
{
	## enviando pasta extraida para $caminho
	printf "[*] Descompactando arquivo... \n"

	tar -xvJf $apelido -C $caminho > /dev/null
}

# funcao altera permissao
f_change_perm()
{
	printf "[*] Alterando permissoes dos arquivos... \n"

	# dando permissao total para modificar o arquivos na pasta
	chmod 755 -R $caminho

	# alterando permissao para que usuario comum(nao root), consiga utilizar o lancador!
	chown -R $user $check/Browser
}

## funcao - chama outras acima
f_tor()
{		
	# verifica se e igual a root,
	# se for diferente, fecha o script!!
	if [[ `id -u` -ne 0 ]]; then
		clear
		printf "[-] PRECISA DE ROOT PARA SER EXECUTADO!"
		exit 1
	fi

	# executando vetor de acoes
    for (( i = 0; i <= ${#acoes[@]}; i++ )); do             
        # executanco acao
        ${acoes[$i]} 

        # verificando se existiu algum erro na execucao - se sim, sai do loop
		f_check_status        
    done
}

## funcao - checa url
f_check_url()
{
	echo "URL:" $url_tor
}

# chamando funcao principal
main()
{
	# limpando a tela na inicializacao do script
	clear

	if [[ $1 == "checa" ]]; then
		f_check_url
	else
		f_tor
	fi

	# chamando funcao para baixar tor
	# f_tor
}

# chamando script 
main $1

