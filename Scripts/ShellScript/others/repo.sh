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
LOCAL='/home/lenonr/Github/'		

# repositorios disponiveis
REPOS=(dev_xfce dev_scripts dev_ksp dev_sysadmin dev_web dev_clonerepo)		

pull_git()
{
	# # walk to the array
	for (( i = 1; i <= ${#REPOS[@]}; i++ )); do	
		# verify local repo disk
		if [[ $LOCAL${REPOS[$i]} != $LOCAL ]]; then
			# verify local repo
			if [ -e "$LOCAL${REPOS[$i]}" ]; then 	  	 
				printf ""
			  	echo "[+] - Atualizando repositorio:" $LOCAL${REPOS[$i]} >> /tmp/repo.txt

			  	# into folder location
			  	cd $LOCAL${REPOS[$i]}

			  	# update repositories
			  	git pull >> /tmp/repo.txt

			  	# REPO_FOUNDS=$(($REPO_FOUNDS + 1));        
			  	let REPO_FOUNDS++		  	
			else
				printf ""
				echo "[-] - Not found": $LOCAL${REPOS[$i]}
				printf "Download now!\n"			
				git clone $SERVER${REPOS[$i]}$GIT

				# REPO_NOTFOUNDS=$(($REPO_NOTFOUNDS + 1));        
				let REPO_NOTFOUNDS++
			fi
		fi
	done	
}

# data de inicio do script
date > /tmp/repo.txt

# chamando funcao
pull_git

# data do final do script
date >> /tmp/repo.txt