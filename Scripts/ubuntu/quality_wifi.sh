#clear
#echo "Qualidade do sinal Wi-fi"
#echo "----------------------------------------------------------"
#iwlist wlp2s0b1 scan | grep Quality
#echo "----------------------------------------------------------"

watch -n1 iwconfig 
