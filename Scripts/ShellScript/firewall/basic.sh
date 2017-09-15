 #! /bin/bash
 #Referencia: <https://www.vivaolinux.com.br/dica/Firewall-basico-e-simples>
 #Autor:  Antonio Thomacelli 
 
# Instruções
# Salvar em /etc/init.d/"nome_arquivo" e dar permissão para execução

###########################
# TITULO ABRE #
echo "Iniciando FIREWALL"
###########################

######################
#Zera todas as Regras#
######################
echo "Regras Zeras"
iptables -F

########################################
# Bloqueia tudo, nada entra e nada sai #
########################################
echo "Fechando tudo..."
iptables -P INPUT DROP
iptables -P FORWARD DROP
iptables -P OUTPUT DROP


###################################
# Libera conexoes estabelecidas #
###################################
echo "Liberando conexoes..."


iptables -A INPUT -m state --state RELATED,ESTABLISHED -j ACCEPT
iptables -A FORWARD -m state --state RELATED,ESTABLISHED,NEW -j ACCEPT
iptables -A OUTPUT -m state --state RELATED,ESTABLISHED,NEW -j ACCEPT

iptables -A INPUT -A lo -j ACCEPT

###################
# COMPARTILHAMENTO#
###################
#
# iptables -t nat -A POSTROUTING -o ppp0 -j MASQUERADE
#

###########################
# TITULO FECHA #
echo "FIREWALL CONCLUIDO"
########################### 