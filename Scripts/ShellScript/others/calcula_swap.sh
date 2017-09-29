# Referência: <http://sejalivre.org/entendendo-as-variaveis-em-shell-script/>


clear
echo "CALCULADO DE MEMÓRIA SWAP"
echo 

# capturando a quantidade de memoria
tam_mem=$(free -mt | grep Mem: | awk '{ print $2 " MB" }' | sed -e "s; MB;;")

# mostrando memoria instalada
echo "Tamanho da memória é $tam_mem MB"

# se valor menor que 2GB
if [ "$tam_mem" -lt "2048" ]; then
    # calculando tamanho swap
    swap=$((($tam_mem * 5)/10))

    # mostrando valor
    echo "Tamanho da memória SWAP recomendada: $swap MB"	        
    
    echo     
    # realizando soma das memorias
    total=$(($tam_mem+$swap))
    
    # mostrando memoria total do computador
    echo "O seu computador ira conter $total MB de memória total."
    echo 

elif [ "$tam_mem" -lt "4092" ]; then
    # calculando tamanho swap
    swap=$((($tam_mem * 3)/10))

    # mostrando valor
    echo "Tamanho da memória SWAP recomendada: $swap MB"

    echo     
    # realizando soma das memorias
    total=$(($tam_mem+$swap))
    
    # mostrand memoria total do computador
    echo "O seu computador ira conter $total MB de memória total."
    echo 
    
else
    # calculando tamanho swap
    swap=$((($tam_mem * 1)/10))

    # mostrando valor
    echo "Tamanho da memória SWAP recomendada: $swap MB"
    
    echo     
    # realizando soma das memorias
    total=$(($tam_mem+$swap))
    
    # mostrand memoria total do computador
    echo "O seu computador ira conter $total MB de memória total."
    echo 
fi

