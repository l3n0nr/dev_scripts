clear
#echo
#echo
echo 'Limpando a memória, espere..'
echo '----------------------------------------------------'
sudo swapoff -a
sudo swapon -a
echo '----------------------------------------------------------'

clear
echo
echo
echo 'Fazendo varredura no sistema, espere..'
echo '----------------------------------------------------'
sudo dnf autoremove -y
echo '----------------------------------------------------------'

clear
echo
echo
echo 'Realizando limpeza, espere..'
echo '-----------------------------------------------------'
sudo dnf clean all
echo '-----------------------------------------------------'
clear

echo 'Limpeza realizada com sucesso!'
echo '-----------------------------------------------------'
sleep 10
