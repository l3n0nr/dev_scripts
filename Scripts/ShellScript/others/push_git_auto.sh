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
# # # # # # # # # # # # # # # # # # # # # # # ## # # #
# Date create script:    	  		[08/04/18]       #
# Last modification script: 		[08/04/18]       #
# # # # # # # # # # # # # # # # # # # # # # # ## # # #
#
# # variaveis
# pasta dos repositorios
LOCAL='/home/lenonr/Github/'		# pasta do repositorio

# repositorios disponiveis
REPOS=(dev_xfce dev_scripts dev_ksp dev_sysadmin dev_web dev_clonerepo)		# repositorios

# Verifica se repositorio do github, contem modificacao
verifica_mudanca=$(git status | grep "Changes not" > /dev/null; echo $?)
verifica_naotraqueados=$(git status | grep "Untracked files" > /dev/null; echo $?)

# comando git
# comando=$(git pull)

# internet
# internet=$(ping -c1 google.com > /dev/null)

# intervalo de tempo
# TEMPO=14400s 						# sera executado 3 vezes por dia a cada 4 horas
# TEMPO_DATE="14400 seconds"

auto_git()
{
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

			  	# show folder status
			  	echo $LOCAL${REPOS[$i]}

				#######################################			
				# echo "Valor: $verifica"				

				# verifica=$(git status | grep "Changes not" > /dev/null; echo $?)

				if [[ $verifica_mudanca == "0" ]]; then
					# echo "sem modificacao"
					printf
				elif [[ $verifica_mudanca == "1" ]]; then
					echo "com modificacao - MUDANCA"
				else
					echo "erro"
				fi

				if [[ $verifica_naotraqueados == "0" ]]; then
					# echo "sem modificacao"
					printf
				elif [[ $verifica_naotraqueados == "1" ]]; then
					echo "com modificacao - NAO TRAQUEADO"
				else
					echo "erro"
				fi
				########################################			  	

			  	# update repositories
			  	# $comando >> /tmp/repo.txt

			  	# if update repositorie not work
			  	if [[ $? == "0" ]]; then
					# echo "Repositorie ${REPOS[$i]} fine!" >> /tmp/repo.txt
					printf ""
			  	else				  		
					echo "Repositorie Error ${REPOS[$i]}!" >> /tmp/repo.txt
			  	fi

			  	# REPO_FOUNDS=$(($REPO_FOUNDS + 1));        
			  	let REPO_FOUNDS++		

			  	printf "\n" >> /tmp/repo.txt  	
			else
				date >> /tmp/repo.txt
				echo "[-] - Not found": $LOCAL${REPOS[$i]}

				# REPO_NOTFOUNDS=$(($REPO_NOTFOUNDS + 1));        
				let REPO_NOTFOUNDS++
			fi
		fi
	done		
}

# # verificando internet
# if [[ $internet = "0" ]]; then
# 	# chamando funcao
# 	auto_git
# else
# 	echo "sem internet"
# fi

auto_git

# data do final do script
date >> /tmp/repo.txt