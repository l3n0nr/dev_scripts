#!/bin/zsh

# pasta do var_aliasitorio
local_repo='/home/lenonr/Github/'		

# var_aliasitorios
var_alias=(dev_xfce dev_scripts dev_ksp dev_sysadmin dev_web dev_clonerepo)	

auto_alias()	
{		
	# percorre vetor
	for (( i = 0; i <= ${#var_alias[@]}; i++ )); do	
		# se parametro for igual ao vetor
		if [[ $1 == ${var_alias[$i]} ]]; then						
	 		entra_pasta=$local_repo${var_alias[$i]}	
	 		# exit;		  						  	
	 	fi					  				
	done
}

menu()
{		
	# se variavel for vazia, mostra mensagem e sai
	if [[ -z $1 ]]; then
		echo "Parametros disponiveis: $var_alias"
		exit;
	else 		
		# chamando funcao
		auto_alias $1

		#abrindo pasta posteriormente
		echo "########## LISTA DE ARQUIVOS ##########" 
		cd $entra_pasta
		ls
		echo "######################################"	

		echo "Dentro do menu: $(pwd)"

		# echo "saida $entra_pasta"
		cd $entra_pasta
	fi
}

# iniciando script
menu $1

echo "Fora do menu: $(pwd)"

############################################################

# dev_xfce() 
# {	
#   	clear 

# 	# verificando se arquivo existe
# 	if [ -e "$local_repo_DEVXFCE" ]; then 	  	
# 	  	echo "########## LISTA DE ARQUIVOS ##########" 
# 	  	cd $local_repo_DEVXFCE
# 	  	ls
# 	  	echo "######################################"
# 	else
# 		echo "Diretorio '$local_repo_DEVXFCE' nao existe"
# 	fi
# }
