#!/usr/bin/env bash
#
##################################################################
### DESCRICAO
# 	Trabalhando com chave publica no git
# 			help.github.com/articles/connecting-to-github-with-ssh/
# 
## INI_MOD: 08/10/18
## ULT_MOD: 08/10/18
## VERSAO : 0.10
##################################################################
#
# VARIAVEIS
email="lenonrmsouza@gmail.com"
vetor=(f_localhome f_checkkeyssh f_ssh_key f_eval f_ssh_add f_xclip f_checkssh)

f_verifica()
{
	[[ $? = "1" ]] && exit 1
}        

f_checkkeyssh()
{
	ls -la ~/.ssh | grep id_rsa >> 2

	if [[ $? -eq 0 ]]; then
		echo "Voce ja possui a chave SSH no seu diretorio $HOME... "
		exit 1
	fi
}

f_localhome()
{
	echo "[*] Entrando no diretorio do usuario"
	cd $HOME
}

f_ssh_key()
{
	## generate key
	echo "[*] Gerando chave SSH"
	ssh-keygen -t rsa -b 4096 -C "$email"
}

f_eval()
{
	echo "[*] Adicionando chave ao agente em plano de fundo"
	eval "$(ssh-agent -s)"
}

f_ssh_add()
{
	ssh-add ~/.ssh/id_rsa
}

f_xclip()
{
	echo "[*] Copiando chave"
	xclip -sel clip < ~/.ssh/id_rsa.pub
}

f_help()
{
	echo "Now... Access you account in the github and add xclip code in ~Setting/New SSH key~ "
}

f_checkssh()
{
	echo "[*] Testando conexao"
	ssh -T git@github.com
}

# chamando funcoes
main()
{
	clear 

	# executando acoes na forma de vetor
    for (( i = 0; i <= ${#vetor[@]}; i++ )); do             
        ${vetor[$i]} 
        f_verifica
        sleep 2
        echo
    done
}

# chamando funcao principal
main

##################################################################
### RODAPE
##################################################################