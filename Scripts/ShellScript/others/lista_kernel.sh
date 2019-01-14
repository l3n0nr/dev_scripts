#!/usr/bin/env bash

# DESCRICAO
# Lista o ultimo kernel disponivel

# variaveis
endereco="http://kernel.ubuntu.com/~kernel-ppa/mainline/"
# endereco="https://www.kernel.org"

lista()
{
	list=$(curl -s $endereco | awk -F\" '{if (NF > 7) print "'$endereco'"$8}')
	AddressVersion=$( echo "${list}" | tail -n 1)

	echo $AddressVersion
}

main()
{
	lista
}

# chamando funcao principal
main
