#!/bin/sh

# # # # # # # # # # # # # # # # # # # # # # # # # # 
#                      HEAD                       #
# # # # # # # # # # # # # # # # # # # # # # # # # # 

# 09/09/2017.
# Carlos Eduardo.
# carlinhosedubr@gmail.com
# Script para ver IP externo via duckduckgo.com.
# Referência: <https://www.vivaolinux.com.br/script/Ver-endereco-IP-externo-com-DuckDuckGo-wget/>

# # # # # # # # # # # # # # # # # # # # # # # # # # 
# # versão do script:               [0.15]        #
# # ultima ediçao realizada:      [10/10/17]      #
# # # # # # # # # # # # # # # # # # # # # # # # # # 

# # # # # # # # # # # # # # # # # # # # # # # # # # 
#                      BODY                       #
# # # # # # # # # # # # # # # # # # # # # # # # # # 
clear
# Faz o pedido de busca por "my ip address".
# O wget não "baixa" a página para um arquivo, apenas imprime na tela.
wget -qO- --header="User-Agent: Mozilla/5.0 Gecko/2010 Firefox/5" \
--header="Accept-Language: en-us,en;q=0.5" \
--header="Accept-Charset: ISO-8859-1,utf-8;q=0.7,*;q=0.7" \
"https://duckduckgo.com/html/?q=my+ip+address" | \

# Lê a "página" baixada e pega o IP nela.
# Atenção ao fato de que a linha abaixo recebe dados via pipe a cima.
printf "Verificando o seu IP Externo, aguarde..."
grep "Your IP address is" | awk '{print $5}'

# # # # # # # # # # # # # # # # # # # # # # # # # # 
#                      FOOTER                     #
# # # # # # # # # # # # # # # # # # # # # # # # # # 

