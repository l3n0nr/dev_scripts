##########################################################################################
# FIREWALL PERSONALIZADO PARA DD-WRT
# CRIAÇÃO SCRIPT: 14/09/17;
# VERSAO: 0.18;
# 
# # Referência: <https://www.vivaolinux.com.br/topico/Squid-Aptables/Firewall-Bloqueando-parcialmente-saida-de-Email>
# 
#############################################

# # # # FUNCIONANDO
# # iptables -t filter -A INPUT -p udp -m udp --sport 53 -j ACCEPT #DNS
# # iptables -t filter -A INPUT -p udp -m udp --dport 53 -j ACCEPT
# iptables -t filter -A INPUT -p tcp -m tcp --sport 80 -j ACCEPT #http
# iptables -t filter -A INPUT -p tcp -m tcp --dport 80 -j ACCEPT
# iptables -t filter -A INPUT -p tcp -m tcp --sport 443 -j ACCEPT #ssl
# iptables -t filter -A INPUT -p tcp -m tcp --dport 443 -j ACCEPT
# # iptables -t filter -A INPUT -p tcp -m tcp --sport 110 -j ACCEPT #pop
# # iptables -t filter -A INPUT -p tcp -m tcp --dport 110 -j ACCEPT
# # iptables -t filter -A INPUT -p tcp -m tcp --sport 25 -j ACCEPT #smtp
# # iptables -t filter -A INPUT -p tcp -m tcp --dport 25 -j ACCEPT
# # iptables -t filter -A INPUT -p tcp -m tcp --sport 587 -j ACCEPT #smtp
# # iptables -t filter -A INPUT -p tcp -m tcp --dport 587 -j ACCEPT
# # iptables -t filter -A INPUT -p tcp -m tcp --sport 22 -j ACCEPT #ssh
# # iptables -t filter -A INPUT -p tcp -m tcp --dport 22 -j ACCEPT
# iptables -t filter -A INPUT -p tcp -m tcp --sport 22000 -j ACCEPT #ssh
# iptables -t filter -A INPUT -p tcp -m tcp --dport 22000 -j ACCEPT
# iptables -t filter -A INPUT -p tcp -m tcp --sport 23 -j ACCEPT #telnet
# iptables -t filter -A INPUT -p tcp -m tcp --dport 23 -j ACCEPT
# iptables -t filter -A INPUT -p tcp -m tcp --sport 21 -j ACCEPT #ftp
# iptables -t filter -A INPUT -p tcp -m tcp --dport 21 -j ACCEPT
# # iptables -t filter -A INPUT -p tcp -m tcp --sport 5900 -j ACCEPT #VNC
# # iptables -t filter -A INPUT -p tcp -m tcp --dport 5900 -j ACCEPT
# # iptables -t filter -A INPUT -p tcp -m tcp --sport 8245 -j ACCEPT #NO-AP
# # iptables -t filter -A INPUT -p tcp -m tcp --dport 8245 -j ACCEPT
# # iptables -t filter -A INPUT -p tcp -m tcp --sport 10050 -j ACCEPT #Zabbix
# # iptables -t filter -A INPUT -p tcp -m tcp --dport 10050 -j ACCEPT
# # iptables -t filter -A INPUT -p tcp -m tcp --sport 8081 -j ACCEPT #sunproxyadmin
# # iptables -t filter -A INPUT -p tcp -m tcp --dport 8081 -j ACCEPT
# # iptables -t filter -A INPUT -p tcp -m tcp --sport 8082 -j ACCEPT #us-cli - Utilistor
# # iptables -t filter -A INPUT -p tcp -m tcp --dport 8082 -j ACCEPT
# # iptables -t filter -A INPUT -p tcp -m tcp --sport 21000 -j ACCEPT #irtrans - IRTrans Control
# # iptables -t filter -A INPUT -p tcp -m tcp --dport 21000 -j ACCEPT
# iptables -t filter -A INPUT -p tcp -m tcp --sport 8080 -j ACCEPT #http-alt - HTTP Alternate
# iptables -t filter -A INPUT -p tcp -m tcp --dport 8080 -j ACCEPT
# # iptables -t filter -A INPUT -p tcp -m tcp --sport 2082 -j ACCEPT #infowave - Infowave Mobility Server
# # iptables -t filter -A INPUT -p tcp -m tcp --dport 2082 -j ACCEPT
# # iptables -t filter -A INPUT -p tcp -m tcp --sport 1194 -j ACCEPT #openvpn - OpenVPN
# # iptables -t filter -A INPUT -p tcp -m tcp --dport 1194 -j ACCEPT
# # iptables -t filter -A INPUT -p tcp -m tcp --sport 809 -j ACCEPT #SPTRANS
# # iptables -t filter -A INPUT -p tcp -m tcp --dport 809 -j ACCEPT
# # iptables -t filter -A INPUT -p udp -m udp --sport 1194 -j ACCEPT #openvpn - OpenVPN
# # iptables -t filter -A INPUT -p udp -m udp --dport 1194 -j ACCEPT
# 
# # iptables -t filter -A INPUT -A eth1 -p udp -m udp --sport 137 -j ACCEPT #netbios-ns - NETBIOS Name Service
# # iptables -t filter -A INPUT -A eth1 -p udp -m udp --dport 137 -j ACCEPT
# # iptables -t filter -A INPUT -A eth1 -p tcp -m tcp --sport 139 -j ACCEPT #netbios-ns - NETBIOS Name Service
# # iptables -t filter -A INPUT -A eth1 -p tcp -m tcp --dport 139 -j ACCEPT
# # iptables -t filter -A INPUT -A eth1 -p udp -m udp --sport 139 -j ACCEPT
# # iptables -t filter -A INPUT -A eth1 -p udp -m udp --dport 139 -j ACCEPT
# # iptables -t filter -A INPUT -A eth1 -p tcp -m tcp --sport 22000 -j ACCEPT #snapenetio - SNAPenetIO - #alterado para eth1 "verificar se houver erros"
# # iptables -t filter -A INPUT -A eth1 -p tcp -m tcp --sport 138 -j ACCEPT #netbios-dgm - NETBIOS Datagram Service
# # iptables -t filter -A INPUT -A eth1 -p tcp -m tcp --dport 138 -j ACCEPT
# # iptables -t filter -A INPUT -A eth1 -p udp -m udp --sport 138 -j ACCEPT
# # iptables -t filter -A INPUT -A eth1 -p udp -m udp --dport 138 -j ACCEPT
# # iptables -t filter -A INPUT -A eth1 -p tcp -m tcp --sport 135 -j ACCEPT #epmap - DCE endpoint resolution
# # iptables -t filter -A INPUT -A eth1 -p tcp -m tcp --dport 135 -j ACCEPT
# # iptables -t filter -A INPUT -A eth1 -p udp -m udp --sport 135 -j ACCEPT
# # iptables -t filter -A INPUT -A eth1 -p udp -m udp --dport 135 -j ACCEPT
# # iptables -t filter -A INPUT -A eth1 -p tcp -m tcp --sport 445 -j ACCEPT #microsoft-ds - Microsoft-DS
# # iptables -t filter -A INPUT -A eth1 -p tcp -m tcp --dport 445 -j ACCEPT
# # iptables -t filter -A INPUT -A eth1 -p udp -m udp --sport 445 -j ACCEPT
# # iptables -t filter -A INPUT -A eth1 -p udp -m udp --dport 445 -j ACCEPT
# # iptables -t filter -A INPUT -A lo -p udp -m udp --sport 137 -j ACCEPT #netbios-ns - NETBIOS Name Service
# # iptables -t filter -A INPUT -A lo -p udp -m udp --dport 137 -j ACCEPT
# # iptables -t filter -A INPUT -s 127.0.0.1 -d 127.0.0.1 -p udp -j ACCEPT
# # iptables -t filter -A INPUT -s 127.0.0.1 -d 127.0.0.1 -p tcp -j ACCEPT
# # iptables -t filter -A INPUT -A eth1 -p tcp -m tcp --dport 3128 -j ACCEPT #Redirecionaento squid
# iptables -t filter -A INPUT -A eth1 -p tcp -m tcp --dport 80 -j ACCEPT #http
# iptables -t filter -A INPUT -A eth1 -p tcp -m tcp --sport 81 -j ACCEPT
# iptables -t filter -A INPUT -A eth1 -p tcp -m tcp --dport 81 -j ACCEPT
# # iptables -t filter -A INPUT -p tcp -m tcp --dport 7531 -j ACCEPT
# # iptables -t filter -A INPUT -A eth1 -p icmp -j ACCEPT
# iptables -t filter -A INPUT -p tcp -m tcp --sport 37 -j ACCEPT #RelÃ³gio (time)
# # iptables -t filter -A INPUT -p tcp -m multiport -s 0/0 -d 192.168.11.254 --dport 3050,3051 -j ACCEPT #Firebird
# # iptables -t filter -A OUTPUT -p tcp -m multiport -s 0/0 -d 192.168.11.254 --sport 3050,3051 -j ACCEPT
# # iptables -t filter -A INPUT -p gre -j ACCEPT
# # iptables -t filter -A INPUT -p icmp -j ACCEPT
# 
# iptables -t filter -A INPUT -j DROP
# 
# #### DefiniÃ§Ã£o de Portas por IP ####
# #Diogo
# iptables -t filter -A FORWARD -d 192.168.11.48 -p tcp -m tcp --sport 443 -j ACCEPT #ssl
# iptables -t filter -A FORWARD -s 192.168.11.48 -p tcp -m tcp --dport 443 -j ACCEPT
# #iptables -t filter -A FORWARD -d 192.168.11.48 -p tcp -m tcp --sport 25 -j ACCEPT #smtp
# #iptables -t filter -A FORWARD -s 192.168.11.48 -p tcp -m tcp --dport 25 -j ACCEPT
# # iptables -t filter -A FORWARD -d 192.168.11.48 -p tcp -m tcp --sport 587 -j ACCEPT #smtp
# # iptables -t filter -A FORWARD -s 192.168.11.48 -p tcp -m tcp --dport 587 -j ACCEPT
# iptables -t filter -A FORWARD -d 192.168.11.48 -p tcp -m tcp --sport 110 -j ACCEPT #pop
# iptables -t filter -A FORWARD -s 192.168.11.48 -p tcp -m tcp --dport 110 -j ACCEPT
# iptables -t filter -A FORWARD -d 192.168.11.48 -p tcp -m tcp --sport 123 -j ACCEPT #NTP
# iptables -t filter -A FORWARD -s 192.168.11.48 -p tcp -m tcp --dport 123 -j ACCEPT
# iptables -t filter -A FORWARD -d 192.168.11.48 -p tcp -m tcp --sport 8080 -j ACCEPT #http
# iptables -t filter -A FORWARD -s 192.168.11.48 -p tcp -m tcp --dport 8080 -j ACCEPT
# iptables -t filter -A FORWARD -d 192.168.11.48 -p tcp -m tcp --sport 802 -j ACCEPT #Swith 24 portas
# iptables -t filter -A FORWARD -s 192.168.11.48 -p tcp -m tcp --dport 802 -j ACCEPT
# iptables -t filter -A FORWARD -d 192.168.11.48 -p tcp -m tcp --sport 809 -j ACCEPT #sptrans
# iptables -t filter -A FORWARD -s 192.168.11.48 -p tcp -m tcp --dport 809 -j ACCEPT
# iptables -t filter -A FORWARD -d 192.168.11.48 -p tcp -m tcp --sport 3000 -j ACCEPT
# iptables -t filter -A FORWARD -s 192.168.11.48 -p tcp -m tcp --dport 3000 -j ACCEPT
# iptables -t filter -A FORWARD -d 192.168.11.48 -p tcp -m tcp --sport 3002 -j ACCEPT
# iptables -t filter -A FORWARD -d 192.168.11.48 -p tcp -m tcp --dport 3002 -j ACCEPT
# iptables -t filter -A FORWARD -d 192.168.11.48 -p tcp -m tcp --sport 2082 -j ACCEPT
# iptables -t filter -A FORWARD -d 192.168.11.48 -p tcp -m tcp --dport 2082 -j ACCEPT
# 
# #### DefiniÃ§Ã£o de Portas Gerais ####
# 
# iptables -t filter -A FORWARD -p tcp -m tcp --sport 1234 -j ACCEPT
# iptables -t filter -A FORWARD -p tcp -m tcp --dport 1234 -j ACCEPT
# iptables -t filter -A FORWARD -p tcp -m tcp --sport 5900 -j ACCEPT #vnc-server - VNC Server
# iptables -t filter -A FORWARD -p tcp -m tcp --dport 5900 -j ACCEPT
# iptables -t filter -A FORWARD -p tcp -m tcp --sport 443 -j ACCEPT #ssl
# iptables -t filter -A FORWARD -p tcp -m tcp --dport 443 -j ACCEPT
# iptables -t filter -A FORWARD -p tcp -m tcp --sport 123 -j ACCEPT #NTP
# iptables -t filter -A FORWARD -p tcp -m tcp --dport 123 -j ACCEPT
# iptables -t filter -A FORWARD -p tcp -m tcp --sport 8080 -j ACCEPT
# iptables -t filter -A FORWARD -p tcp -m tcp --dport 8080 -j ACCEPT
# iptables -t filter -A FORWARD -p tcp -m tcp --sport 809 -j ACCEPT
# iptables -t filter -A FORWARD -p tcp -m tcp --dport 809 -j ACCEPT
# iptables -t filter -A FORWARD -p tcp -m tcp --sport 3000 -j ACCEPT
# iptables -t filter -A FORWARD -p tcp -m tcp --dport 3000 -j ACCEPT
# iptables -t filter -A FORWARD -p tcp -m tcp --sport 3002 -j ACCEPT
# iptables -t filter -A FORWARD -p tcp -m tcp --dport 3002 -j ACCEPT
# iptables -t filter -A FORWARD -p udp -m udp --sport 53 -j ACCEPT
# iptables -t filter -A FORWARD -p udp -m udp --dport 53 -j ACCEPT
# iptables -t filter -A FORWARD -p udp -m udp --sport 587 -j ACCEPT
# iptables -t filter -A FORWARD -p udp -m udp --dport 587 -j ACCEPT
# #iptables -t filter -A FORWARD -p udp -m udp --sport 25 -j ACCEPT
# #iptables -t filter -A FORWARD -p udp -m udp --dport 25 -j ACCEPT
# iptables -t filter -A FORWARD -p udp -m udp --sport 110 -j ACCEPT
# iptables -t filter -A FORWARD -p udp -m udp --dport 110 -j ACCEPT
# iptables -t filter -A FORWARD -p udp -m udp --sport 123 -j ACCEPT
# iptables -t filter -A FORWARD -p udp -m udp --dport 123 -j ACCEPT
# 
# iptables -t filter -A FORWARD -j DROP
# 
# # # # ERRO
# # iptables -t filter -A OUTPUT -j DROP

##############################################################################

# ###############################
# #   Verificador de Trojans    #
# ###############################
# TROJAN_PORTS="12345 31336 31337 31338 3024 4092 5714 5742 2583 8787 5556 5557"
# iptables -t filter -N trojans-An
# for PORTA in ${TROJAN_PORTS};do
#     iptables -A trojans-An -p tcp --sport=1024: --dport=${PORTA} -j LOG \ --log-prefix "FIREWALL: Trojan ${PORTA} "
#     iptables -A trojans-An -p tcp --sport=1024: --dport=${PORTA} -j DROP
# done
# iptables -t filter -A INPUT -A ppp0 -j trojans-An
# 
# ################################
# #   Proteção contra Spoofing   #
# ################################
# for i in /proc/sys/net/ipv4/conf/*/rp_filter; do
#     echo 1 >$i
# done
# 
# #######################################
# #   Libera conexoes estabelecidas     #
# #######################################
# iptables -A INPUT -m state --state RELATED,ESTABLISHED -j ACCEPT
# iptables -A FORWARD -m state --state RELATED,ESTABLISHED,NEW -j ACCEPT
# iptables -A OUTPUT -m state --state RELATED,ESTABLISHED,NEW -j ACCEPT
# 
# ##################################################
# #   Libera portas necessarias para utilização    #
# ##################################################
# # telnet
# # source
# # iptables -A INPUT -p tcp --sport 23 -j ACCEPT
# # 
# # # destination
# iptables -A INPUT -p tcp --dport 23 -j ACCEPT
# 
# iptables -t filter -A INPUT -p tcp -m tcp --sport 23 -j ACCEPT
# iptables -t filter -A INPUT -p tcp -m tcp --dport 23 -j ACCEPT
# 
# # dns
# # # source
# # iptables -A INPUT -p tcp --sport 53 -j ACCEPT
# # 
# # # destination
# # iptables -A INPUT -p tcp --dport 53 -j ACCEPT
# 
# iptables -t filter -A INPUT -p tcp -m tcp --sport 53 -j ACCEPT 
# iptables -t filter -A INPUT -p tcp -m tcp --dport 53 -j ACCEPT
# 
# # http
# # # source
# # iptables -A INPUT -p tcp --sport 80 -j ACCEPT
# # 
# # # destination
# # iptables -A INPUT -p tcp --dport 80 -j ACCEPT
# 
# iptables -t filter -A INPUT -p tcp -m tcp --sport 80 -j ACCEPT 
# iptables -t filter -A INPUT -p tcp -m tcp --dport 80 -j ACCEPT
# 
# # https
# # # source
# # iptables -A INPUT -p tcp --sport 443 -j ACCEPT
# # 
# # # destination
# # iptables -A INPUT -p tcp --dport 443 -j ACCEPT
# 
# iptables -t filter -A INPUT -p tcp -m tcp --sport 443 -j ACCEPT 
# iptables -t filter -A INPUT -p tcp -m tcp --dport 443 -j ACCEPT
# 
# # transmission
# # # source
# # iptables -A INPUT -p tcp --sport 9091 -j ACCEPT
# # 
# # # destination
# # iptables -A INPUT -p tcp --dport 9091 -j ACCEPT
# 
# iptables -t filter -A INPUT -p tcp -m tcp --sport 9091 -j ACCEPT 
# iptables -t filter -A INPUT -p tcp -m tcp --dport 9091 -j ACCEPT
# 
# # ssh
# # # source
# # iptables -A INPUT -p tcp --sport 22 -j ACCEPT
# # iptables -A INPUT -p tcp --sport 22000 -j ACCEPT
# # 
# # # destination
# # iptables -A INPUT -p tcp --dport 22 -j ACCEPT
# # iptables -A INPUT -p tcp --dport 22000 -j ACCEPT
# 
# iptables -t filter -A INPUT -p tcp -m tcp --sport 22000 -j ACCEPT 
# iptables -t filter -A INPUT -p tcp -m tcp --dport 22000 -j ACCEPT
# 
# # # RESTANTE DAS PORTAS SAO BLOQUEADAS
# iptables -P INPUT DROP
# 
# 
# # # FORWARD
# 
# iptables -t filter -A FORWARD -p tcp -m tcp --sport 23 -j ACCEPT
# iptables -t filter -A FORWARD -p tcp -m tcp --sport 53 -j ACCEPT
# iptables -t filter -A FORWARD -p tcp -m tcp --sport 80 -j ACCEPT
# iptables -t filter -A FORWARD -p tcp -m tcp --sport 9091 -j ACCEPT
# iptables -t filter -A FORWARD -p tcp -m tcp --sport 22000 -j ACCEPT
# 
# # # RESTANTE PORTAS BLOQUEADAS
# iptables -P FORWARD DROP
# 
# ##################################################
# 
# TESTE 3
# 
# ##################################################
# # ADICIONANDO REDICIONAMENTO DE PACOTES
# echo "1" > /proc/sys/net/ipv4/ip_forward
# 
# # APAGANDO REGRAS ESCRITAS
# iptables -F
# iptables -X
# iptables -t nat -F
# iptables -t nat -X
# 
# # FECHANDO ENTRADA DE DADOS EM TODAS PORTAS 
# iptables -P INPUT DROP
# 
# # REDIRECIONAMENTO DE PORTAS BLOQUEADO
# iptables -P FORWARD DROP
# 
# # LIBERANDO PORTAS NECESSARIAS
# # ping
# iptables -A INPUT -p icmp -j ACCEPT
# 
# # telnet
# iptables -A INPUT -p tcp --dport 23 -j ACCEPT
# 
# # dns
# iptables -A INPUT -p udp --sport 53 -j ACCEPT
# iptables -A INPUT -p tcp --dport 53 -j ACCEPT
# 
# # http
# iptables -A INPUT -p tcp --dport 80 -j ACCEPT
# 
# # https
# iptables -A INPUT -p tcp --sport 443 -j ACCEPT
# 
# # transmission
# iptables -A INPUT -p tcp --sport 9091 -j ACCEPT
# 
# # ssh
# iptables -A INPUT -p tcp --dport 22 -j ACCEPT
# iptables -A INPUT -p tcp --dport 22000 -j ACCEPT
# 
# # 
# # LIBERANDO REDIRECIONAMENTO EM PORTAS ESPECIFICAS
# iptables -A FORWARD -p tcp --dport 23 -j ACCEPT
# iptables -A FORWARD -p tcp --sport 53 -j ACCEPT
# iptables -A FORWARD -p udp --dport 53 -j ACCEPT
# iptables -A FORWARD -p tcp --dport 80 -j ACCEPT
# iptables -A FORWARD -p tcp --dport 9091 -j ACCEPT
# iptables -A FORWARD -p tcp --dport 22 -j ACCEPT
# iptables -A FORWARD -p tcp --dport 22000 -j ACCEPT
# 
# # REGRA DE MASCARAMENTO
# iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE

# # TESTE 4

#!/bin/bash
# ----------------------------------------------------------
# Limpando Regras
# ----------------------------------------------------------

# REMOVENDO REGRAS DA TABELA FILTER
iptables -F
iptables -X
iptables -t nat -F
iptables -t nat -X

# ----------------------------------------------------------
# Ativa modulos
# ----------------------------------------------------------
modprobe iptable_nat
modprobe ip_conntrack
modprobe ip_conntrack_ftp
modprobe ip_nat_ftp
modprobe ipt_LOG
modprobe ipt_REJECT
modprobe ipt_MASQUERADE

# ----------------------------------------------------------
# Ativa proteções basicas
# ----------------------------------------------------------

##### Proteção contra IP Spoofing #####
for i in /proc/sys/net/ipv4/conf/*/rp_filter; do
echo 1 >$i
done

### FILTRANDO PACOTES FRAGMENTADOS ###
/sbin/iptables -A INPUT -f -j DROP

### BLOQUEANDO ATAQUE "SMURFF" (PING DE BROADCAST), ping -b "ip"
### NAO FUNCIONA COM DHCP, POR QUE DHCP FAZ UM BROADCAST PARA GANHAR IP
echo 1 > /proc/sys/net/ipv4/icmp_echo_ignore_broadcasts

# ----------------------------------------------------------
# Definindo socks válidos
# ----------------------------------------------------------
#

### NO IPTABLES TEMOS QUE DIZER QUAIS SOCKETS SAO VALIDOS EM UMA CONEXAO
/sbin/iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT

# ----------------------------------------------------------
#               LIBERANDO PORTAS DE ENTRADA
# ----------------------------------------------------------
iptables -A INPUT -i lo -j ACCEPT
iptables -A INPUT -p icmp -j ACCEPT #ping
iptables -A INPUT -p tcp --dport 23 -j ACCEPT #telnet
iptables -A INPUT -p udp --sport 53 -j ACCEPT #dns
iptables -A INPUT -p tcp --dport 53 -j ACCEPT #dns
iptables -A INPUT -p tcp --dport 80 -j ACCEPT  #http
iptables -A INPUT -p tcp --sport 443 -j ACCEPT #https
iptables -A INPUT -p tcp --sport 9091 -j ACCEPT #transmission
# iptables -A INPUT -p tcp --dport 22 -j ACCEPT #ssh
iptables -A INPUT -p tcp --dport 22000 -j ACCEPT #ssh

# ##################################################

#/sbin/iptables -F # LIMPA AS CADEIAS DE IMPUT, OUTPUT E FORWARD
#/sbin/iptables -F -t nat # LIMPA A TABELA NAT

# ----------------------------------------------------------
# Definindo Politicas
# ----------------------------------------------------------

# Tabela filter
iptables -t filter -P INPUT DROP
iptables -t filter -P OUTPUT ACCEPT
iptables -t filter -P FORWARD DROP

# Tabela nat
iptables -t nat -P PREROUTING ACCEPT
iptables -t nat -P OUTPUT ACCEPT
iptables -t nat -P POSTROUTING ACCEPT

# Tabela mangle
iptables -t mangle -P PREROUTING ACCEPT
iptables -t mangle -P OUTPUT ACCEPT

# ##################################################
 
##########################################################################################