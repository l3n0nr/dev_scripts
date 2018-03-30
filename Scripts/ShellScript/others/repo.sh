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
# Last modification script: 		[30/03/18]       #
# # # # # # # # # # # # # # # # # # # # # # # ## # # #

# variables
LOCAL_DEVXFCE='/home/lenonr/Github/dev_xfce'
LOCAL_DEVSCRIPTS='/home/lenonr/Github/dev_scripts'
LOCAL_DEVSYSADMIN='/home/lenonr/Github/dev_sysadmin'
LOCAL_DEVKSP='/home/lenonr/Github/dev_ksp'
LOCAL_DEVWEB='/var/www/html/dev_web'
LOCAL_DEVCLONEREPO='/home/lenonr/Github/dev_clonerepo'

# # implementar array para otimizar script
# REPOS=(dev_xfce dev_scripts dev_ksp dev_sysadmin dev_web dev_clonerepo)

# # # walk to the array
# for (( i = 0; i <= ${#REPOS[@]}; i++ )); do	
# 	# verify local repo disk
# 	if [[ $LOCAL${REPOS[$i]} != $LOCAL ]]; then
# 		# verify local repo
# 		if [ -e "$LOCAL${REPOS[$i]}" ]; then 	  	 
# 			printf ""
# 		  	echo "[+] - Found:" $LOCAL${REPOS[$i]}

# 		  	# into folder location
# 		  	cd $LOCAL${REPOS[$i]}

# 		  	# update repositories
# 		  	git pull

# 		  	# REPO_FOUNDS=$(($REPO_FOUNDS + 1));        
# 		  	let REPO_FOUNDS++		  	
# 		else
# 			printf ""
# 			echo "[-] - Not found": $LOCAL${REPOS[$i]}
# 			printf "Download now!\n"			
# 			git clone $SERVER${REPOS[$i]}$GIT

# 			# REPO_NOTFOUNDS=$(($REPO_NOTFOUNDS + 1));        
# 			let REPO_NOTFOUNDS++
# 		fi
# 	fi
# done	

pull_git()
{
	clear 	
	  
  	# verificando se diretorio existe 
  	if [ -e "$LOCAL_DEVXFCE" ]; then 
	  	echo "[*] Verificando Diretório dev_xfce"
	  	cd $LOCAL_DEVXFCE
	  	git pull
	  	printf "\n"
	fi

	# verificando se diretorio existe 
  	if [ -e "$LOCAL_DEVSCRIPTS" ]; then 
	  	echo "[*] Verificando Diretório dev_scripts"
	  	cd $LOCAL_DEVSCRIPTS
	  	git pull
	  	printf "\n"
	fi

	# verificando se diretorio existe 
  	if [ -e "$LOCAL_DEVSYSADMIN" ]; then 
	  	echo "[*] Verificando Diretório dev_sysadmin"
	  	cd $LOCAL_DEVSYSADMIN
	  	git pull
	  	printf "\n"
	fi

	# verificando se diretorio existe 
  	if [ -e "$LOCAL_DEVKSP" ]; then 
	  	echo "[*] Verificando Diretório dev_ksp"
	  	cd $LOCAL_DEVKSP
	  	git pull
	  	printf "\n"
	fi

	# verificando se diretorio existe 
  	if [ -e "$LOCAL_DEVWEB" ]; then 
	  	echo "[*] Verificando Diretório dev_web"
	  	cd $LOCAL_DEVWEB
	  	git pull
	  	printf "\n"
	fi

	# verificando se diretorio existe 
  	if [ -e "$LOCAL_DEVCLONEREPO" ]; then 
	  	echo "[*] Verificando Diretório dev_clonerepo"
	  	cd $LOCAL_DEVCLONEREPO
	  	git pull
	  	printf "\n"
	fi

	# verificando se diretorio existe 
  	if [ -e "$LOCAL_HOME" ]; then 
	  	cd $LOCAL_HOME
	fi	
}

# chamando funcao
pull_git