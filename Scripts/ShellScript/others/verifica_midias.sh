#!/bin/bash
#
####################
# DESENVOLVIDO POR #
####################
#
# por lenonr(Lenon Ricardo) 
# 	contato: <lenonrmsouza@gmail.com>
#
#################################################################################
#										#
#	If I have seen further it is by standing on the shoulders of Giants.	#
#	(Se vi mais longe foi por estar de pé sobre ombros de gigantes)		#
#							~Isaac Newton		#
#										#
#################################################################################
#
###################################################
# versão do script:              0.0.70.0.0.0     #
# # ultima ediçao realizada:      [07/06/18]      #
###################################################
#
# legenda: a.b.c.d.e.f
# 	a = alpha[0], beta[1];
# 	b = erros na execução;	
# 	c = interações com o script + versões funcionando;
# 	d = correções necessárias;
# 	e = pendencias
# 	f = desenvolver
#           - Definir variaveis globais como padrao, modificar apenas o caminho final nas variaveis locais dentro de cada função.
#
#       OBS: 
#           - Criar os arquivos necessarios, antes de realizar o backup na primeira vez que o script for executado.           
#
################################################################################
#
# Script testado em Linux
#	- Xubuntu 16.04
#	- Debian 10
#
################################################################################
#
################################################################################
# FUNCOES
#   -Realiza backup no formato de arquivos de texto de diversos diretórios para o MEGA.
#
################################################################################

#criando variaveis globais
# caminhoorigem="/media/lenonr/BACKUP/Arquivos/"
# caminhodestino="/home/lenonr/MEGA/Outros/Lista/"

# criando arquivo dentro de cada funcao, para evitar possiveis erros
#     touch $caminhodestino/Filmes.txt

LOCAL_DESTINO="/home/lenonr/MEGA/"

install_tree()
{
	# variavel de verificação
    var_tree=$(which tree)

    if [[ ! -e $var_tree ]]; then
        printf "O Tree nao foi encontrado, instalar por favor!"
    	sudo apt install tree -y        
    fi
}

filmes()
{    
    #criando variaveis
    caminhofilmesorigem="/media/lenonr/BACKUP/Arquivos/Filmes"
        
    caminhofilmesdestino="/home/lenonr/MEGA/Outros/Lista/Filmes.txt"
    caminhofilmesdestinohd="/media/lenonr/BACKUP/Arquivos/Filmes/Filmes.txt"    
    
    # deletando arquivos por garantia
#     printf "[*] Deletando arquivos já existentes...\n"
#     rm $caminhofilmesdestino $caminhofilmesdestinohd
    
    # mostrando mensagem de execução 
    printf "[*] Verificando Filmes, aguarde...\n"
    sleep 2
    
    # gerando arquivo
    tree $caminhofilmesorigem > $caminhofilmesdestino

 #    f=`cat $caminhofilmes_destino | wc -l`
	# printf "\n Este arquivo contem $f filmes listados!" >> $caminhofilmes_destino
    
    # copiando arquivo
    cat $caminhofilmesdestino > $caminhofilmesdestinohd
}

filmes_assistidos()
{
    #criando variaveis
    caminhofilmes_a_origem="/media/lenonr/BACKUP/Arquivos/Filmes"
    
    caminhofilmes_a_destino="/home/lenonr/MEGA/Outros/Lista/Filmes_Assistidos.txt"
    caminhofilmes_a_destinohd="/media/lenonr/BACKUP/Arquivos/Filmes/Filmes_Assistidos.txt"    
 
    # mostrando mensagem de execução 
    printf "[*] Verificando Filmes Assistidos, aguarde...\n"
    sleep 2
    
    # gerando arquivo
    tree $caminhofilmes_a_origem | grep "[*]" | sort > $caminhofilmes_a_destino

    fa=`cat $caminhofilmes_a_destino | wc -l`
	printf "\n Este arquivo contem $fa filmes listados!" >> $caminhofilmes_a_destino
    
    # copiando arquivo
    cat $caminhofilmes_a_destino > $caminhofilmes_a_destinohd
}

filmes_pendentes()
{
    #criando variaveis
    caminhofilmes_a_origem="/media/lenonr/BACKUP/Arquivos/Filmes"
    
    caminhofilmes_a_destino="/home/lenonr/MEGA/Outros/Lista/Filmes_Pendentes.txt"
    caminhofilmes_a_destinohd="/media/lenonr/BACKUP/Arquivos/Filmes/Filmes_Pendentes.txt"    
 
    # mostrando mensagem de execução 
    printf "[*] Verificando Filmes Pendentes, aguarde...\n"
    sleep 2
    
    # gerando arquivo
    tree $caminhofilmes_a_origem | grep "[+]" | sort > $caminhofilmes_a_destino
    
    fp=`cat $caminhofilmes_a_destino | wc -l`
	printf "\n Este arquivo contem $fp filmes pendentes!" >> $caminhofilmes_a_destino

    # copiando arquivo
    cat $caminhofilmes_a_destino > $caminhofilmes_a_destinohd    
}

seriados()
{   
    #criando variaveis
    caminhoseriadosorigem="/media/lenonr/BACKUP/Arquivos/Seriados"
    
    caminhoseriadosdestino="/home/lenonr/MEGA/Outros/Lista/Seriados.txt"    
    caminhoseriadosdestinohd="/media/lenonr/BACKUP/Arquivos/Seriados/Seriados.txt"
    
    # deletando arquivos por garantia
#     printf "[*] Deletando arquivos já existentes.. \n"
#     rm $caminhoseriadosdestino $caminhoseriadosdestinohd
    
    # mostrando mensagem de execução
    printf "[*] Verificando Seriados, aguarde...\n"
    sleep 2
    
    # gerando arquivo
    tree $caminhoseriadosorigem > $caminhoseriadosdestino
    
    # copiando arquivo
    cat $caminhoseriadosdestino > $caminhoseriadosdestinohd
}

################################################################################
#
clear
if [ -e "$LOCAL_DESTINO" ]; then 
    printf "[+] Executando leitura das pastas \n"
    printf "################################################### \n"
    install_tree

    # executa somente se tree esta instalado
    if [[ ! -e $var_tree ]]; then
        echo "[-] Tree não está instalado"
    else
        filmes
        filmes_assistidos
        filmes_pendentes
        seriados
    fi
    printf "################################################### \n"
else 
    printf "[-] Pasta '$LOCAL_DESTINO' nao encontrada! \n"
    printf "[-] Backup nao realizado!!\n"
fi

