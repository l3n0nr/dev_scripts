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

chave="0"
# Verifica se repositorio do github, contem modificacao
# verifica_mudanca=$(git status | grep "Changes not" > /dev/null; echo $?)
# verifica_naotrackeados=$(git status | grep "Untracked files" > /dev/null; echo $?)

# comando git
# comando=$(git pull)

# internet
# internet=$(ping -c1 google.com > /dev/null)
# intervalo de tempo
# TEMPO=14400s 						# sera executado 3 vezes por dia a cada 4 horas
# TEMPO_DATE="14400 seconds"

auto_git()
{
	clear

	# # walk to the array
	for (( i = 1; i <= ${#REPOS[@]}; i++ )); do	
		# verify local repo disk
		if [[ $LOCAL${REPOS[$i]} != $LOCAL ]]; then
			# verify local repo
			if [ -e "$LOCAL${REPOS[$i]}" ]; then 	  	 
				date >> /tmp/repo.txt
			  	echo "[+] - Atualizando repositorio:" $LOCAL${REPOS[$i]} >> /tmp/repo.txt				

				# if update repositorie work
			  	if [[ $? == "0" ]]; then
		  			# into folder location
				  	cd $LOCAL${REPOS[$i]}			  					

					# check status
					git status | grep "Changes not" > /dev/null
						
					# if value = 0, then comparation is true
					if [[ $? == "0" ]]; then
						# show folder status
						# echo "[Modificado]: $LOCAL${REPOS[$i]}"											

						saida=$(git status | grep "modified:" | sed -e "s;modified:   ;;g")

						echo "$LOCAL${REPOS[$i]}:$saida" 

						break;
					else
						# echo "sem modificacao"
						printf ""
					fi				

					git status | grep "Untracked files:" > /dev/null

					# if value = 0, then comparation is true
					if [[ $? == "0" ]]; then
						# show folder status
						# echo "[Nao Trackeado]: $LOCAL${REPOS[$i]}"
						git status

						cd $LOCAL${REPOS[$i]}													

						break;
					else
						# echo "sem modificacao"
						printf ""
					fi			
					
				# if update repositorie not work		
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

auto_git

# data do final do script
date >> /tmp/repo.txt