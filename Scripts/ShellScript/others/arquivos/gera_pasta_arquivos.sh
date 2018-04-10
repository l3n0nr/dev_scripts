#!/bin/zsh
#
# diretorio pai
local_pai="/tmp/lista_compras"

# lista de subdiretorios
local_sub=(frutas verduras graos)

# lista de arquivos
arquivos=(banana maça alface couve arroz trigo)

remove_arquivos()
{
	if [[ -d $local_pai ]]; then
		rm -rf $local_pai
	fi
}

pasta_origem()
{
	# verificando se local existe
	# testa apenas uma vez
	if [[ -d $local_pai ]]; then
		echo "Pasta pai, $local_pai ja existe!" > /dev/null
	else
		mkdir $local_pai
	fi
}

sub_pastas()
{
	# percorrendo vetor - subdiretorios
	for (( i = 0; i <= ${#local_sub[@]}; i++ )); do
		# verificando se arquivo existe
		if [[ -d $local_pai/${local_sub[i]} ]]; then		
			echo "Subdiretorio ${local_sub[$i]} ja existe!" > /dev/null
		else
			# criando subdiretorios
			mkdir $local_pai/${local_sub[i]}
		fi
	done
}

arquivos()
{
	# percorrendo o vetor - subdiretorios
	for (( i = 0; i <= ${#local_sub[@]}; i++ )); do
		# verificando se subdiretorio existe
		if [[ -d $local_pai/${local_sub[i]} ]]; then	
			# percorrendo vetor - arquivos	
			for (( j = 0; j <= ${#arquivos[@]}; j++ )); do
				if [[ ${local_sub[i]} = ${local_sub[1]} ]]; then
					touch $local_pai/${local_sub[i]}/${arquivos[1]}
					touch $local_pai/${local_sub[i]}/${arquivos[2]}
				fi

				if [[ ${local_sub[i]} = ${local_sub[2]} ]]; then
					touch $local_pai/${local_sub[i]}/${arquivos[3]}
					touch $local_pai/${local_sub[i]}/${arquivos[4]}
				fi

				if [[ ${local_sub[i]} = ${local_sub[3]} ]]; then
					touch $local_pai/${local_sub[i]}/${arquivos[5]}
					touch $local_pai/${local_sub[i]}/${arquivos[6]}
				fi
			done
		else
			echo "erro - criação dos diretorios"
		fi
	done
}

clear

# removendo arquivos por garantia
remove_arquivos

# chamando funcao do diretorio pai
pasta_origem

# chamando funcao dos subdiretorios
sub_pastas

# chamando funcao criacao arquivos
arquivos