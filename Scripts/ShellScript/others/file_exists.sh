#/bin/bash

## versao noob
# if [ -e $1 ]; then
# 	printf "Arquivo ja existe!"
# else
# 	printf "Arquivo nao existe, criando arquivo!"
# 	mkdir $1
# fi

## criando um arquivo, caso ele nao exista
## versao simplifica
>> $1