#!/bin/zsh

# pasta do var_aliasitorio
LOCAL='/home/lenonr/Github/'		

# var_aliasitorios
var_alias=(dev_xfce dev_scripts dev_ksp dev_sysadmin dev_web dev_clonerepo)	

auto_alias()	
{		
	for (( i = 0; i <= ${#var_alias[@]}; i++ )); do	
		# verify local repo disk
		if [[ $LOCAL${var_alias[$i]} != $LOCAL ]]; then
			# verify local repo
			if [ -e "$LOCAL${var_alias[$i]}" ]; then 	  	 		
				# compare values
				if [[ $1 == ${var_alias[$i]} ]]; then						
			 		entra_pasta=$LOCAL${var_alias[$i]}			  						  	
			 	fi					  			

				# add  
			  	let repo_founds++		

			  	printf "\n" >> /tmp/repo.txt  	
			else
				date >> /tmp/repo.txt
				echo "[-] - Not found": $LOCAL${var_alias[$i]}

				# repo_notfounds=$(($repo_notfounds + 1));        
				let repo_notfounds++
			fi
		fi
	done
}

menu()
{		
	if [[ $1 == "" ]]; then
		echo "Parametros disponiveis: $var_alias"
		exit;
	else 		
		# chamando funcao
		auto_alias $1		

		#abrindo pasta posteriormente
		echo "########## LISTA DE ARQUIVOS ##########" 
		# cd $LOCAL${var_alias[$i]}			  		
		cd $entra_pasta
		ls
		echo "######################################"	

		echo "Dentro do menu: $(pwd)"
	fi
}

echo "Antes do menu: $(pwd)"

menu $1

echo "Fora do menu: $(pwd)"

############################################################

# dev_xfce() 
# {	
#   	clear 

# 	# verificando se arquivo existe
# 	if [ -e "$LOCAL_DEVXFCE" ]; then 	  	
# 	  	echo "########## LISTA DE ARQUIVOS ##########" 
# 	  	cd $LOCAL_DEVXFCE
# 	  	ls
# 	  	echo "######################################"
# 	else
# 		echo "Diretorio '$LOCAL_DEVXFCE' nao existe"
# 	fi
# }

# dev_scripts()
# {	
# 	clear

# 	# verificando se arquivo existe
# 	if [ -e "$LOCAL_DEVSCRIPTS" ]; then 	  	
# 	  	echo "########## LISTA DE ARQUIVOS ##########" 
# 	  	cd $LOCAL_DEVSCRIPTS
# 	  	ls
# 	  	echo "######################################"
# 	else
# 		echo "Diretorio '$LOCAL_DEVSCRIPTS' nao existe"
# 	fi
# }

# dev_sysadmin()
# {	
#   	clear 

#   	# verificando se diretorio existe 
#   	if [ -e "$LOCAL_DEVSYSADMIN" ]; then 
# 	  	echo "########## LISTA DE ARQUIVOS ##########" 
# 	  	cd $LOCAL_DEVSYSADMIN
# 	  	ls
# 	  	echo "######################################"
#   	else
# 		echo "Diretorio '$LOCAL_DEVSYSADMIN' nao existe"
# 	fi
# }

# dev_ksp()
# {	
#   	clear 

#   	# verificando se diretorio existe 
#   	if [ -e "$LOCAL_KSP" ]; then 
# 	  	echo "########## LISTA DE ARQUIVOS ##########" 
# 	  	cd $LOCAL_KSP
# 	  	ls
# 	  	echo "######################################"
#   	else
# 		echo "Diretorio '$LOCAL_KSP' nao existe"
# 	fi	
# }

# dev_web() 
# {	
#   	clear 

#   	# verificando se diretorio existe 
#   	if [ -e "$LOCAL_DEVWEB" ]; then 
# 	  	echo "########## LISTA DE ARQUIVOS ##########" 
# 	  	cd $LOCAL_DEVWEB
# 	  	ls
# 	  	echo "######################################"
#   	else
# 		echo "Diretorio '$LOCAL_DEVWEB' nao existe"
# 	fi
# }

# dev_clonerepo() 
# {	
#   	clear 

#   	# verificando se diretorio existe 
#   	if [ -e "$LOCAL_DEVCLONEREPO" ]; then 
# 	  	echo "########## LISTA DE ARQUIVOS ##########" 
# 	  	cd $LOCAL_DEVCLONEREPO
# 	  	ls
# 	  	echo "######################################"
#   	else
# 		echo "Diretorio '$LOCAL_DEVCLONEREPO' nao existe"
# 	fi
# }

# home()
# {	
#   	clear 

#   	# verificando se diretorio existe 
#   	if [ -e "$LOCAL_HOME" ]; then 
# 	  	echo "########## LISTA DE ARQUIVOS ##########" 
# 	  	cd $LOCAL_HOME
# 	  	ls
# 	  	echo "######################################"
#   	else
# 		echo "Diretorio '$LOCAL_HOME' nao existe"
# 	fi
# }

# wrt()
# {
#   	# verificando conexao
#   	ping -c1 $LOCAL_WRT

#   	clear 

#   	# verificando se diretorio existe 
#   	if [ $? -eq 0 ]; then
#   		echo "########################"
#   		printf "CONECTANDO AO SERVIDOR\n"
#   		echo "########################\n"
# 	  	telnet $LOCAL_WRT
#   	else
# 		echo "IP do servidor '$LOCAL_WRT' nao encontrado"
# 	fi
# }

# verificahd()
# {	
#   	clear 

#   	# verificando se diretorio existe 
#   	if [ -e "$LOCAL_HDD" ]; then 
# 	  	/home/lenonr/Github/dev_scripts/Scripts/ShellScript/others/verifica_midias.sh
#   	else
# 		echo "Conecte o HDD ao computador!"
# 	fi
# }

# pull_git()
# {
# 	clear 	
	  
#   	# verificando se diretorio existe 
#   	if [ -e "$LOCAL_DEVXFCE" ]; then 
# 	  	echo "[*] Verificando Diretório dev_xfce"
# 	  	cd $LOCAL_DEVXFCE
# 	  	git pull
# 	  	printf "\n"
# 	fi

# 	# verificando se diretorio existe 
#   	if [ -e "$LOCAL_DEVSCRIPTS" ]; then 
# 	  	echo "[*] Verificando Diretório dev_scripts"
# 	  	cd $LOCAL_DEVSCRIPTS
# 	  	git pull
# 	  	printf "\n"
# 	fi

# 	# verificando se diretorio existe 
#   	if [ -e "$LOCAL_DEVSYSADMIN" ]; then 
# 	  	echo "[*] Verificando Diretório dev_sysadmin"
# 	  	cd $LOCAL_DEVSYSADMIN
# 	  	git pull
# 	  	printf "\n"
# 	fi

# 	# verificando se diretorio existe 
#   	if [ -e "$LOCAL_DEVKSP" ]; then 
# 	  	echo "[*] Verificando Diretório dev_ksp"
# 	  	cd $LOCAL_DEVKSP
# 	  	git pull
# 	  	printf "\n"
# 	fi

# 	# verificando se diretorio existe 
#   	if [ -e "$LOCAL_DEVWEB" ]; then 
# 	  	echo "[*] Verificando Diretório dev_web"
# 	  	cd $LOCAL_DEVWEB
# 	  	git pull
# 	  	printf "\n"
# 	fi

# 	# verificando se diretorio existe 
#   	if [ -e "$LOCAL_DEVCLONEREPO" ]; then 
# 	  	echo "[*] Verificando Diretório dev_clonerepo"
# 	  	cd $LOCAL_DEVCLONEREPO
# 	  	git pull
# 	  	printf "\n"
# 	fi

# 	# verificando se diretorio existe 
#   	if [ -e "$LOCAL_HOME" ]; then 
# 	  	cd $LOCAL_HOME
# 	fi	
# }

# push_git()
# {
# 	clear 	
	  
#   	# verificando se diretorio existe 
#   	if [ -e "$LOCAL_DEVXFCE" ]; then 
# 	  	echo "[*] Verificando Diretório dev_xfce"
# 	  	cd $LOCAL_DEVXFCE
# 	  	git push
# 	  	printf "\n"
# 	fi

# 	# verificando se diretorio existe 
#   	if [ -e "$LOCAL_DEVSCRIPTS" ]; then 
# 	  	echo "[*] Verificando Diretório dev_scripts"
# 	  	cd $LOCAL_DEVSCRIPTS
# 	  	git push
# 	  	printf "\n"
# 	fi

# 	# verificando se diretorio existe 
#   	if [ -e "$LOCAL_DEVSYSADMIN" ]; then 
# 	  	echo "[*] Verificando Diretório dev_sysadmin"
# 	  	cd $LOCAL_DEVSYSADMIN
# 	  	git push
# 	  	printf "\n"
# 	fi

# 	# verificando se diretorio existe 
#   	if [ -e "$LOCAL_DEVKSP" ]; then 
# 	  	echo "[*] Verificando Diretório dev_ksp"
# 	  	cd $LOCAL_DEVKSP
# 	  	git push
# 	  	printf "\n"
# 	fi

# 	# verificando se diretorio existe 
#   	if [ -e "$LOCAL_DEVWEB" ]; then 
# 	  	echo "[*] Verificando Diretório dev_web"
# 	  	cd $LOCAL_DEVWEB
# 	  	git push
# 	  	printf "\n"
# 	fi

# 	# verificando se diretorio existe 
#   	if [ -e "$LOCAL_DEVCLONEREPO" ]; then 
# 	  	echo "[*] Verificando Diretório dev_clonerepo"
# 	  	cd $LOCAL_DEVCLONEREPO
# 	  	git push
# 	  	printf "\n"
# 	fi

# 	# verificando se diretorio existe 
#   	if [ -e "$LOCAL_HOME" ]; then 
# 	  	cd $LOCAL_HOME
# 	fi	
# }

# status_git()
# {
# 	clear 	
	  
#   	# verificando se diretorio existe 
#   	if [ -e "$LOCAL_DEVXFCE" ]; then 
# 	  	echo "[*] Verificando Diretório dev_xfce"
# 	  	cd $LOCAL_DEVXFCE
# 	  	git status
# 	  	printf "\n"
# 	fi

# 	# verificando se diretorio existe 
#   	if [ -e "$LOCAL_DEVSCRIPTS" ]; then 
# 	  	echo "[*] Verificando Diretório dev_scripts"
# 	  	cd $LOCAL_DEVSCRIPTS
# 	  	git status
# 	  	printf "\n"
# 	fi

# 	# verificando se diretorio existe 
#   	if [ -e "$LOCAL_DEVSYSADMIN" ]; then 
# 	  	echo "[*] Verificando Diretório dev_sysadmin"
# 	  	cd $LOCAL_DEVSYSADMIN
# 	  	git status
# 	  	printf "\n"
# 	fi

# 	# verificando se diretorio existe 
#   	if [ -e "$LOCAL_DEVKSP" ]; then 
# 	  	echo "[*] Verificando Diretório dev_ksp"
# 	  	cd $LOCAL_DEVKSP
# 	  	git status
# 	  	printf "\n"
# 	fi

# 	# verificando se diretorio existe 
#   	if [ -e "$LOCAL_DEVWEB" ]; then 
# 	  	echo "[*] Verificando Diretório dev_web"
# 	  	cd $LOCAL_DEVWEB
# 	  	git status
# 	  	printf "\n"
# 	fi

# 	# verificando se diretorio existe 
#   	if [ -e "$LOCAL_DEVCLONEREPO" ]; then 
# 	  	echo "[*] Verificando Diretório dev_clonerepo"
# 	  	cd $LOCAL_DEVCLONEREPO
# 	  	git status
# 	  	printf "\n"
# 	fi

# 	# verificando se diretorio existe 
#   	if [ -e "$LOCAL_HOME" ]; then 
# 	  	cd $LOCAL_HOME
# 	fi	
# }