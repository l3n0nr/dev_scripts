#!/bin/bash
# 
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
 
#                           CABEÇALHO DO SCRIPT                               #

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
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
# # versão do script:              [0.0.10]       #
# # data de criação do script:    [23/10/17]      #
# # ultima ediçao realizada:      [23/10/17]      #
# # # # # # # # # # # # # # # # # # # # # # # # # # 
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
# 
# # FUNCOES
# # # # # # # # # #    
# # DADOS DO SISTEMA
# 
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
 
#                               CORPO DO SCRIPT                               #

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# 
system()
    {     
        clear
        
        # definindo variavel de verificação
        laco="0"
    
        # definindo quantidade de vezes que o laço sera repetido
        p_vezes="30"
        
        # definindo tempo de atualização do laço
        p_tempo="1"
        
        # mostrando mensagem
        printf "#################################################################################################### \n"
        printf "Essa função irá mostrar dados do sistema, como consumo de memória, utilização do disco e uptime do sistema; \n"
        printf "Você pode escolher a quantidade de vezes que esses dados serão mostrados; \n"
        printf "A forma padrão irá executar $p_vezes vezes em um intervalo de $p_tempo segundos. \n"
        printf "#################################################################################################### \n\n"
        read -n1 -p "Você deseja escolher? (s|sim|S|SIM) / (n|nao|N|NAO): " escolha
        case $escolha in
            s|sim|S|SIM) printf   
                printf "\n"
                read -n1 -p "Digite o valor de vezes que deseja executar essa função: " vezes
                printf "\n"
                read -n1 -p "Agora digite o valor o intervalo de atualização em segundos: " tempo
                
                # enquanto $local for menor ou igual a $vezes, executa
                while [ $laco -le $vezes ]; 
                do
                    clear                                                            
                    printf "################################# \n"
                    printf "A sua distribuição é $distro \n"
                    printf "################################# \n"
                    
                    printf "| Laço nº $laco | Vezes $vezes | Intervalo $tempo | \n"
                    printf "[+] DADOS GERAIS \n"
                    free -mht
                    free -m | awk 'NR==2{printf "Memory Usage: %s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }'
                    
                    printf "\n"
                    df -h | awk '$NF=="/"{printf "Disk Usage: %d/%dGB (%s)\n", $3,$2,$5}'       
                                    
                    printf "\n"
                    printf "[+] Espaço de armazenamento \n"
                    df -h
                    
                    printf "\n"
                    printf "[+] Uptime do Sistema \n"
                    uptime
                    
                    # realizando soma na variavel
                    ((laco++))
                    
                    # aguardando tempo para atualização do laço
                    sleep $tempo                                    
                done
            ;;
            n|nao|N|NAO) printf
                # enquanto $local for menor ou igual a $vezes, executa
                while [ $laco -le $p_vezes ]; 
                do
                    clear                                                            
                    printf "################################# \n"
                    printf "A sua distribuição é $distro \n"
                    printf "################################# \n"
                    
                    printf "| Laço nº $laco | Vezes $p_vezes | Intervalo $p_tempo | \n"
                    printf "[+] DADOS GERAIS \n"
                    free -mht
                    free -m | awk 'NR==2{printf "Memory Usage: %s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }'
                    
                    printf "\n"
                    df -h | awk '$NF=="/"{printf "Disk Usage: %d/%dGB (%s)\n", $3,$2,$5}'                
                                    
                    printf "\n"
                    printf "[+] Espaço de armazenamento \n"
                    df -h
                    
                    printf "\n"
                    printf "[+] Uptime do Sistema \n"
                    uptime
                    
                    # realizando soma na variavel
                    ((laco++))
                    
                    # aguardando tempo para atualização do laço
                    sleep $p_tempo                                    
                done
            ;;
            *) 
                printf "Digite corretamente!"
                sleep 1
                system    
            ;;
        esac                
    }
    
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# INICIANDO SCRIPT
system
# 
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
 
#                           RODAPE DO SCRIPT                                    #

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 