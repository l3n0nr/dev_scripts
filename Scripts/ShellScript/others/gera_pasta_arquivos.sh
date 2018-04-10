#!/bin/zsh

# local dos arquivos
local_repo="/tmp/teste"

# lista de arquivos
var_repo=(a b c d)

pasta_origem()
{
	# verificando se local existe
	# testa apenas uma vez
	if [[ -d $local_repo ]]; then
		echo "pasta ja existe "
	else
		echo "criando pasta"
		mkdir $local_repo
		cd $local_repo
	fi
}

sub_pastas()
{
	# percorrendo vetor
	for (( i = 0; i < ${#var_alias[@]}; i++ )); do
		# verificando se arquivo existe
		if [[ -d ${#var_alias[@]} ]]; then
			echo "pasta ja existe"	
		else
			# criando arquivos
			mkdir ${#var_alias[@]}
		fi
	done
}