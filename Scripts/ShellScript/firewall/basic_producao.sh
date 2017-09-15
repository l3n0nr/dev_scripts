# Referência: <https://www.vivaolinux.com.br/topico/Squid-Aptables/Firewall-Bloqueando-parcialmente-saida-de-Email>
#!/bin/
# Script de Regras do Iptables
# Acionado por /etc/init.d/firewall start

###### Inicio das Regras normais do Firewall #####
#*filter

iptables -t filter -A INPUT -p icmp -j ACCEPT
iptables -t filter -A INPUT -A tun0 -j ACCEPT

iptables -t filter -A INPUT -p udp -m udp --sport 53 -j ACCEPT #DNS
iptables -t filter -A INPUT -p udp -m udp --dport 53 -j ACCEPT
iptables -t filter -A INPUT -p tcp -m tcp --sport 80 -j ACCEPT #http
iptables -t filter -A INPUT -p tcp -m tcp --dport 80 -j ACCEPT
iptables -t filter -A INPUT -p tcp -m tcp --sport 443 -j ACCEPT #ssl
iptables -t filter -A INPUT -p tcp -m tcp --dport 443 -j ACCEPT
iptables -t filter -A INPUT -p tcp -m tcp --sport 110 -j ACCEPT #pop
iptables -t filter -A INPUT -p tcp -m tcp --dport 110 -j ACCEPT
#iptables -t filter -A INPUT -p tcp -m tcp --sport 25 -j ACCEPT #smtp
#iptables -t filter -A INPUT -p tcp -m tcp --dport 25 -j ACCEPT
iptables -t filter -A INPUT -p tcp -m tcp --sport 587 -j ACCEPT #smtp
iptables -t filter -A INPUT -p tcp -m tcp --dport 587 -j ACCEPT
iptables -t filter -A INPUT -p tcp -m tcp --sport 22 -j ACCEPT #ssh
iptables -t filter -A INPUT -p tcp -m tcp --dport 22 -j ACCEPT
iptables -t filter -A INPUT -p tcp -m tcp --sport 21 -j ACCEPT #ftp
iptables -t filter -A INPUT -p tcp -m tcp --dport 21 -j ACCEPT
iptables -t filter -A INPUT -p tcp -m tcp --sport 5900 -j ACCEPT #VNC
iptables -t filter -A INPUT -p tcp -m tcp --dport 5900 -j ACCEPT
iptables -t filter -A INPUT -p tcp -m tcp --sport 8245 -j ACCEPT #NO-AP
iptables -t filter -A INPUT -p tcp -m tcp --dport 8245 -j ACCEPT
iptables -t filter -A INPUT -p tcp -m tcp --sport 10050 -j ACCEPT #Zabbix
iptables -t filter -A INPUT -p tcp -m tcp --dport 10050 -j ACCEPT
iptables -t filter -A INPUT -p tcp -m tcp --sport 8081 -j ACCEPT #sunproxyadmin
iptables -t filter -A INPUT -p tcp -m tcp --dport 8081 -j ACCEPT
iptables -t filter -A INPUT -p tcp -m tcp --sport 8082 -j ACCEPT #us-cli - Utilistor
iptables -t filter -A INPUT -p tcp -m tcp --dport 8082 -j ACCEPT
iptables -t filter -A INPUT -p tcp -m tcp --sport 21000 -j ACCEPT #irtrans - IRTrans Control
iptables -t filter -A INPUT -p tcp -m tcp --dport 21000 -j ACCEPT
iptables -t filter -A INPUT -p tcp -m tcp --sport 8080 -j ACCEPT #http-alt - HTTP Alternate
iptables -t filter -A INPUT -p tcp -m tcp --dport 8080 -j ACCEPT
iptables -t filter -A INPUT -p tcp -m tcp --sport 2082 -j ACCEPT #infowave - Infowave Mobility Server
iptables -t filter -A INPUT -p tcp -m tcp --dport 2082 -j ACCEPT
iptables -t filter -A INPUT -p tcp -m tcp --sport 1194 -j ACCEPT #openvpn - OpenVPN
iptables -t filter -A INPUT -p tcp -m tcp --dport 1194 -j ACCEPT
iptables -t filter -A INPUT -p tcp -m tcp --sport 809 -j ACCEPT #SPTRANS
iptables -t filter -A INPUT -p tcp -m tcp --dport 809 -j ACCEPT
iptables -t filter -A INPUT -p udp -m udp --sport 1194 -j ACCEPT #openvpn - OpenVPN
iptables -t filter -A INPUT -p udp -m udp --dport 1194 -j ACCEPT

iptables -t filter -A INPUT -A eth1 -p udp -m udp --sport 137 -j ACCEPT #netbios-ns - NETBIOS Name Service
iptables -t filter -A INPUT -A eth1 -p udp -m udp --dport 137 -j ACCEPT
iptables -t filter -A INPUT -A eth1 -p tcp -m tcp --sport 139 -j ACCEPT #netbios-ns - NETBIOS Name Service
iptables -t filter -A INPUT -A eth1 -p tcp -m tcp --dport 139 -j ACCEPT
iptables -t filter -A INPUT -A eth1 -p udp -m udp --sport 139 -j ACCEPT
iptables -t filter -A INPUT -A eth1 -p udp -m udp --dport 139 -j ACCEPT
iptables -t filter -A INPUT -A eth1 -p tcp -m tcp --sport 22000 -j ACCEPT #snapenetio - SNAPenetIO - #alterado para eth1 "verificar se houver erros"
iptables -t filter -A INPUT -A eth1 -p tcp -m tcp --sport 138 -j ACCEPT #netbios-dgm - NETBIOS Datagram Service
iptables -t filter -A INPUT -A eth1 -p tcp -m tcp --dport 138 -j ACCEPT
iptables -t filter -A INPUT -A eth1 -p udp -m udp --sport 138 -j ACCEPT
iptables -t filter -A INPUT -A eth1 -p udp -m udp --dport 138 -j ACCEPT
iptables -t filter -A INPUT -A eth1 -p tcp -m tcp --sport 135 -j ACCEPT #epmap - DCE endpoint resolution
iptables -t filter -A INPUT -A eth1 -p tcp -m tcp --dport 135 -j ACCEPT
iptables -t filter -A INPUT -A eth1 -p udp -m udp --sport 135 -j ACCEPT
iptables -t filter -A INPUT -A eth1 -p udp -m udp --dport 135 -j ACCEPT
iptables -t filter -A INPUT -A eth1 -p tcp -m tcp --sport 445 -j ACCEPT #microsoft-ds - Microsoft-DS
iptables -t filter -A INPUT -A eth1 -p tcp -m tcp --dport 445 -j ACCEPT
iptables -t filter -A INPUT -A eth1 -p udp -m udp --sport 445 -j ACCEPT
iptables -t filter -A INPUT -A eth1 -p udp -m udp --dport 445 -j ACCEPT
iptables -t filter -A INPUT -A lo -p udp -m udp --sport 137 -j ACCEPT #netbios-ns - NETBIOS Name Service
iptables -t filter -A INPUT -A lo -p udp -m udp --dport 137 -j ACCEPT
iptables -t filter -A INPUT -s 127.0.0.1 -d 127.0.0.1 -p udp -j ACCEPT
iptables -t filter -A INPUT -s 127.0.0.1 -d 127.0.0.1 -p tcp -j ACCEPT
iptables -t filter -A INPUT -A eth1 -p tcp -m tcp --dport 3128 -j ACCEPT #Redirecionaento squid
iptables -t filter -A INPUT -A eth1 -p tcp -m tcp --dport 80 -j ACCEPT #http
iptables -t filter -A INPUT -A eth1 -p tcp -m tcp --sport 81 -j ACCEPT
iptables -t filter -A INPUT -A eth1 -p tcp -m tcp --dport 81 -j ACCEPT
iptables -t filter -A INPUT -p tcp -m tcp --dport 7531 -j ACCEPT
iptables -t filter -A INPUT -A eth1 -p icmp -j ACCEPT
iptables -t filter -A INPUT -p tcp -m tcp --sport 37 -j ACCEPT #RelÃ³gio (time)
iptables -t filter -A INPUT -p tcp -m multiport -s 0/0 -d 192.168.11.254 --dport 3050,3051 -j ACCEPT #Firebird
iptables -t filter -A OUTPUT -p tcp -m multiport -s 0/0 -d 192.168.11.254 --sport 3050,3051 -j ACCEPT
iptables -t filter -A INPUT -p gre -j ACCEPT
iptables -t filter -A INPUT -p icmp -j ACCEPT

#iptables -t filter -A INPUT -m limit --limit 4/min -j LOG --log-prefix "INP_DROP -- DENY Policy " --log-level 6

iptables -t filter -A INPUT -j DROP

#### DefiniÃ§Ã£o de Portas por IP ####
#Diogo
iptables -t filter -A FORWARD -d 192.168.11.48 -p tcp -m tcp --sport 443 -j ACCEPT #ssl
iptables -t filter -A FORWARD -s 192.168.11.48 -p tcp -m tcp --dport 443 -j ACCEPT
#iptables -t filter -A FORWARD -d 192.168.11.48 -p tcp -m tcp --sport 25 -j ACCEPT #smtp
#iptables -t filter -A FORWARD -s 192.168.11.48 -p tcp -m tcp --dport 25 -j ACCEPT
# iptables -t filter -A FORWARD -d 192.168.11.48 -p tcp -m tcp --sport 587 -j ACCEPT #smtp
# iptables -t filter -A FORWARD -s 192.168.11.48 -p tcp -m tcp --dport 587 -j ACCEPT
iptables -t filter -A FORWARD -d 192.168.11.48 -p tcp -m tcp --sport 110 -j ACCEPT #pop
iptables -t filter -A FORWARD -s 192.168.11.48 -p tcp -m tcp --dport 110 -j ACCEPT
iptables -t filter -A FORWARD -d 192.168.11.48 -p tcp -m tcp --sport 123 -j ACCEPT #NTP
iptables -t filter -A FORWARD -s 192.168.11.48 -p tcp -m tcp --dport 123 -j ACCEPT
iptables -t filter -A FORWARD -d 192.168.11.48 -p tcp -m tcp --sport 8080 -j ACCEPT #http
iptables -t filter -A FORWARD -s 192.168.11.48 -p tcp -m tcp --dport 8080 -j ACCEPT
iptables -t filter -A FORWARD -d 192.168.11.48 -p tcp -m tcp --sport 802 -j ACCEPT #Swith 24 portas
iptables -t filter -A FORWARD -s 192.168.11.48 -p tcp -m tcp --dport 802 -j ACCEPT
iptables -t filter -A FORWARD -d 192.168.11.48 -p tcp -m tcp --sport 809 -j ACCEPT #sptrans
iptables -t filter -A FORWARD -s 192.168.11.48 -p tcp -m tcp --dport 809 -j ACCEPT
iptables -t filter -A FORWARD -d 192.168.11.48 -p tcp -m tcp --sport 3000 -j ACCEPT
iptables -t filter -A FORWARD -s 192.168.11.48 -p tcp -m tcp --dport 3000 -j ACCEPT
iptables -t filter -A FORWARD -d 192.168.11.48 -p tcp -m tcp --sport 3002 -j ACCEPT
iptables -t filter -A FORWARD -d 192.168.11.48 -p tcp -m tcp --dport 3002 -j ACCEPT
iptables -t filter -A FORWARD -d 192.168.11.48 -p tcp -m tcp --sport 2082 -j ACCEPT
iptables -t filter -A FORWARD -d 192.168.11.48 -p tcp -m tcp --dport 2082 -j ACCEPT

#### DefiniÃ§Ã£o de Portas Gerais ####

iptables -t filter -A FORWARD -p tcp -m tcp --sport 1234 -j ACCEPT
iptables -t filter -A FORWARD -p tcp -m tcp --dport 1234 -j ACCEPT
iptables -t filter -A FORWARD -p tcp -m tcp --sport 5900 -j ACCEPT #vnc-server - VNC Server
iptables -t filter -A FORWARD -p tcp -m tcp --dport 5900 -j ACCEPT
iptables -t filter -A FORWARD -p tcp -m tcp --sport 443 -j ACCEPT #ssl
iptables -t filter -A FORWARD -p tcp -m tcp --dport 443 -j ACCEPT
iptables -t filter -A FORWARD -p tcp -m tcp --sport 123 -j ACCEPT #NTP
iptables -t filter -A FORWARD -p tcp -m tcp --dport 123 -j ACCEPT
iptables -t filter -A FORWARD -p tcp -m tcp --sport 8080 -j ACCEPT
iptables -t filter -A FORWARD -p tcp -m tcp --dport 8080 -j ACCEPT
iptables -t filter -A FORWARD -p tcp -m tcp --sport 809 -j ACCEPT
iptables -t filter -A FORWARD -p tcp -m tcp --dport 809 -j ACCEPT
iptables -t filter -A FORWARD -p tcp -m tcp --sport 3000 -j ACCEPT
iptables -t filter -A FORWARD -p tcp -m tcp --dport 3000 -j ACCEPT
iptables -t filter -A FORWARD -p tcp -m tcp --sport 3002 -j ACCEPT
iptables -t filter -A FORWARD -p tcp -m tcp --dport 3002 -j ACCEPT
iptables -t filter -A FORWARD -p udp -m udp --sport 53 -j ACCEPT
iptables -t filter -A FORWARD -p udp -m udp --dport 53 -j ACCEPT
iptables -t filter -A FORWARD -p udp -m udp --sport 587 -j ACCEPT
iptables -t filter -A FORWARD -p udp -m udp --dport 587 -j ACCEPT
#iptables -t filter -A FORWARD -p udp -m udp --sport 25 -j ACCEPT
#iptables -t filter -A FORWARD -p udp -m udp --dport 25 -j ACCEPT
iptables -t filter -A FORWARD -p udp -m udp --sport 110 -j ACCEPT
iptables -t filter -A FORWARD -p udp -m udp --dport 110 -j ACCEPT
iptables -t filter -A FORWARD -p udp -m udp --sport 123 -j ACCEPT
iptables -t filter -A FORWARD -p udp -m udp --dport 123 -j ACCEPT

## Bloqueio Redes Sociais
# Apenas para a lista da linha abaixo serÃ¡ permitido o acesso!
for t in `cat /brasfaiber/Administrativo/Internet/access.dat` ; do
# Bloqueia o acesso a todos exceto os da lista (!)
iptables -A FORWARD -A eth1 -m string --algo bm --string "facebook.com" -j DROP ! -s $t
iptables -A FORWARD -A eth1 -m string --algo bm --string "twitter.com" -j DROP ! -s $t
done
## Fim do Bloqueio Redes Sociais

### Portas DVR Intelbras ###
iptables -t filter -A FORWARD -p tcp -m tcp --dport 37777 -j ACCEPT
iptables -t filter -A FORWARD -p tcp -m tcp --sport 37777 -j ACCEPT
iptables -t filter -A FORWARD -p tcp -m tcp --dport 7070 -j ACCEPT
iptables -t filter -A FORWARD -p tcp -m tcp --sport 7070 -j ACCEPT
### Fim das Portas do DVR Intelbras ###

#### Fim da DefiniÃ§Ã£o de Portas Gerais ####

#iptables -t filter -A FORWARD -m limit --limit 4/min -j LOG --log-prefix "FWD_DROP -- DENY Policy " --log-level 6
iptables -t filter -A FORWARD -j DROP

#*mangle

#*nat

iptables -t nat -A PREROUTING -A eth1 -p tcp -m tcp --dport 80 -j REDIRECT --to-ports 3128
iptables -t nat -A POSTROUTING -s 192.168.11.0/255.255.255.0 -o eth0 -j MASQUERADE

### Encaminhamento portas DVR ###
iptables -t nat -A PREROUTING -A eth0 -p tcp --dport 7070 -j DNAT --to-destination 192.168.11.33:7070
iptables -t nat -A PREROUTING -A eth0 -p tcp --dport 37777 -j DNAT --to-destination 192.168.11.33:37777
### Fim do Encaminhamento portas DVR ###

#iptables -A INPUT -j LOG --log-level info --log-prefix "DROP:"
#iptables -A OUTPUT -j LOG --log-level info --log-prefix "DROP:"


##### Fim do Firewall #####
