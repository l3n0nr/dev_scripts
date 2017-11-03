#!/bin/bash
# 
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
 
#                           CABEÇALHO DO SCRIPT                               #

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# 
# # # # # # # # # # # # # 
#   FONTES DE PESQUISA  #
# # # # # # # # # # # # # 
# 
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# 
# Referencia: <https://www.vivaolinux.com.br/script/Verificar-eou-limpar-cache-de-memoria>
#   Autor: Pedro - Viva o Linux
# 
# Referencia: <http://www.hardware.com.br/guias/programando-shell-script/variaveis-comparacao.html>
#   Autor: Carlos E. Morimoto - Guia do Hardware
# 
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# 
# # # # # # # # # # # # # 
#   DESENVOLVIDO POR    #
# # # # # # # # # # # # # 
#
# por lenonr(Lenon Ricardo) 
#       contato: <lenonrmsouza@gmail.com>
#
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
#										#
#	If I have seen further it is by standing on the shoulders of Giants.	#
#	(Se vi mais longe foi por estar de pé sobre ombros de gigantes)		#
#							~Isaac Newton		#
#										#
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
#
# # # # # # # # # # # # # # # # # # # # # # # # # # 
# # versão do script:           [0.0.20.0.0.0]   #
# # data de criação do script:    [03/11/17]      #
# # ultima ediçao realizada:      [03/11/17]      #
# # # # # # # # # # # # # # # # # # # # # # # # # # 
# 
# Legenda: a.b.c.d.e.f
# 	a = alpha[0], beta[1], stable[2], freeze[3];
# 	b = erros na execução;	
# 	c = interações com o script;
# 	d = correções necessárias;
# 	e = pendencias    
# 	f = desenvolver 
#
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# 
#       [+] - Açao realizada; 
#       [*] - Processamento;
#       [-] - Não executado;
#       [!] - Mensagem de aviso;
# 
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# 
# # Script testado em
#	- Xubuntu 16.04
#       - Debian 9
#
# # Compativel com
#       - Ubuntu
#       - Debian 9
# 
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# # FUNCOES
# 
#  REINICIANDO MEMORIA SWAP, DE ACORDO COM A QUANTIDADE DE MEMÓRIA RAM DISPONIVEL
# 
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
 
#                               CORPO DO SCRIPT                               #

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# 
# VARIAVEIS DE VERIFICAÇÃO
# # # MEMORIA
# MEM_TOTAL=$(awk '/^MemTotal/ { print $2; }' /proc/meminfo)
MEM_LIVRE=$(awk '/^MemFree/ { print $2; }' /proc/meminfo)

# # # SWAP
SWAP_TOTAL=$(awk '/^SwapTotal/ { print $2; }' /proc/meminfo)
SWAP_LIVRE=$(awk '/^SwapFree/ { print $2; }' /proc/meminfo)

# calculo de espaço disponivel
SWAP_USADA=($SWAP_TOTAL - $SWAP_LIVRE)

# realizando calculo para MB
MEM_LIVRE_MB=$(( $MEM_LIVRE / 1024 ))
SWAP_USADA_MB=$(( $SWAP_USADA / 1024 ))

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# -lt : (less than), menor que, equivalente ao <.
# -gt : (greather than), maior que, equivalente ao >.
# -le : (less or equal), menor ou igual, equivalente ao <=.
# -ge : (greater or equal), maior ou igual, equivalente ao >=.
# -eq : (equal), igual, equivale ao =.
# -ne : (not equal) diferente. Equivale ao != que usamos a pouco.
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

# limpando tela
clear

# echo "Memoria total do computador:" $MEM_TOTAL "Kb"
# echo "Memoria livre do computador:" $MEM_LIVRE "Kb"

# echo "Swap total do computador:" $SWAP_TOTAL "Kb"
# echo "Swap livre do computador:" $SWAP_LIVRE "Kb"

# echo "Swap usada:" $SWAP_USADA "Kb"
# echo "Memoria livre " $MEM_LIVRE_MB "MB"
# echo "Swap usada " $SWAP_USADA_MB "MB"

# realizando verificação de sudo
if [[ `id -u` -ne 0 ]]; then
    clear        
    printf "############################################################################ \n"
    printf "[!] O script para funcionar, precisa estar sendo executado como root! \n"
    printf "[!] Favor, logar na conta root e executar o script novamente. \n"
    printf "############################################################################ \n"    
    exit
fi

verifica()
{
    if [[ $MEM_LIVRE_MB -lt $SWAP_USADA_MB  ]]; then
        printf "[-] Não foi possivel reiniciar, memoria a ser restaurada é maior do que a disponivel! \n"
    else
        printf "[+] Memória SWAP desligada! \n"
        printf "[*] Limpando a memória Swap, aguarde.. \n"
        sudo swapoff -a && sudo swapon -a
        printf "[*] Memória SWAP ligada novamente! \n"        
        printf "[+] Limpeza na memória SWAP realizada com sucesso! \n"
    fi
} 

# # executando script
verifica

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
 
#                           RODAPE DO SCRIPT                                    #

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
