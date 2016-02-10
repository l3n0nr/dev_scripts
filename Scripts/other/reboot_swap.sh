#desligando e ligado a swap no modo administrador
clear
echo "Limpando a memoria Swap.."
echo "Desligando a memoria Swap.."
echo "--------------------------"
sudo swapoff -a && sudo swapon -a
echo "Ligando a memoria Swap.."
echo "--------------------------"
clear
echo "Limpeza da memoria Swap realizada com sucesso!"
