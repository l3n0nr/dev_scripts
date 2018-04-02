#!/bin/zsh
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#
# # # # # # # # # # # #
#   DEVELOPMENT BY 	  #
# # # # # # # # # # # #
#
# por lenonr(Lenon Ricardo)
#       contato: <lenonrmsouza@gmail.com>
#
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
#									      									  #
#	If I have seen further it is by standing on the shoulders of Giants.      #
#							~Isaac Newton	      							  #
#									      									  #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
#
# # # # # # # # # # # # # # # # # # # # # # # ## # # #
# Date create script:    	  		[30/03/18]       #
# Last modification script: 		[01/04/18]       #
# # # # # # # # # # # # # # # # # # # # # # # ## # # #

# # variaveis
# pasta dos repositorios
LOCAL='/home/lenonr/Github/'		# pasta do repositorio

# repositorios disponiveis
REPOS=(dev_xfce dev_scripts dev_ksp dev_sysadmin dev_web dev_clonerepo)		# repositorios

# intervalo de tempo
TEMPO=14400s						# sera executado 3 vezes por dia a cada 4 horas

pull_git()
{
	# intervalo de tempo 
	while true; do	
		sleep $TEMPO

		# # walk to the array
		for (( i = 1; i <= ${#REPOS[@]}; i++ )); do	
			# verify local repo disk
			if [[ $LOCAL${REPOS[$i]} != $LOCAL ]]; then
				# verify local repo
				if [ -e "$LOCAL${REPOS[$i]}" ]; then 	  	 
					date >> /tmp/repo.txt
				  	echo "[+] - Atualizando repositorio:" $LOCAL${REPOS[$i]} >> /tmp/repo.txt

				  	# into folder location
				  	cd $LOCAL${REPOS[$i]}

				  	# update repositories
				  	git pull >> /tmp/repo.txt

				  	# REPO_FOUNDS=$(($REPO_FOUNDS + 1));        
				  	let REPO_FOUNDS++		  	
				else
					date >> /tmp/repo.txt
					echo "[-] - Not found": $LOCAL${REPOS[$i]}

					# REPO_NOTFOUNDS=$(($REPO_NOTFOUNDS + 1));        
					let REPO_NOTFOUNDS++
				fi
			fi
		done	
	done
}

# data de inicio do script
echo "Inicio do script" > /tmp/repo.txt
date > /tmp/repo.txt

# chamando funcao
pull_git

# data do final do script
date >> /tmp/repo.txt