# Referência: <http://sejalivre.org/entendendo-as-variaveis-em-shell-script/>

#!/bin/sh
#clear
#free -m | awk 'NR==2{printf "Memory Usage: %s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }'
#echo
#df -h | awk '$NF=="/"{printf "Disk Usage: %d/%dGB (%s)\n", $3,$2,$5}'
#echo
#top -bn1 | grep load | awk '{printf "CPU Load: %.2f\n", $(NF-2)}' 
#echo
#uptime
#echo

clear
#capturando a quantidade de memoria
tam_mem=$(free -mt | grep Mem: | awk '{ print $2 " MB" }' | sed -e "s; MB;;")
echo "Tamanho da memória é $tam_mem MB"

#parametro_m = 512
#parametro1 = 1024
#parametro2 = 2048
#parametro3 = 4092
#parametro4 = 8184


# 3913 + 1024 = 4937
# 3913 + 2048 = 5961

# se valor menor que 2GB
if [ "$tam_mem" -lt "2048" ]; then
    # calculando tamanho swap
    var=$((($tam_mem * 5)/10))
    # var_teste=$(($tam_mem - $var))

    # mostrando valor
    echo "Tamanho da memória SWAP recomendada: $var MB"	

elif [ "$tam_mem" -lt "4092" ]; then
    # calculando tamanho swap
    var=$((($tam_mem * 3)/10))
    # var_teste=$(($tam_mem - $var))

    # mostrando valor
    echo "Tamanho da memória SWAP recomendada: $var MB"
else
    # calculando tamanho swap
    var=$((($tam_mem * 1)/10))
    # var_teste=$(($tam_mem - $var))

    # mostrando valor
    echo "Tamanho da memória SWAP recomendada: $var MB"
fi

# echo "Teste: $var_teste MB"

# calculando tamanho 

# echo $var
# var_mb=$(($var / 1024))
# echo "Tamanho da SWAP: $var"
# echo $var_mb "GB"
# echo $(($tam_mem*0,5))

#echo $parametro_m $parametro1 $parametro2 $parametro3 $parametro4
# if [ "$tam_mem" -lt "1024" ]; then
# 	echo "teste"
# else
# if [ "$tam_mem" -lt "2048" ]; then
# 	#$tam_mem_p = tam_mem/2
# 	echo "O seu computador possui $tam_mem MB de memória, dessa forma a SWAP ideal de até 1024 MB".
# else
# 	echo "erro"
# fi

# se maior que $parametro_m e menor que $parametro1 ou igual, 2GB de SWAP

# se maior que $parametro1 e menor que $parametro3 ou igual, 1GB de SWAP

# se maior que $parametro2 e menor que $parametro4 ou igual, 512 de SWAP

# se maior que $parametro3 e menor que $parametro

