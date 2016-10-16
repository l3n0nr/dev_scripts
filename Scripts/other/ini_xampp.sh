clear
echo 'Iniciando o servidor Xampp, espere..'
echo '------------------------------------'
sleep 3
sudo /opt/lampp/lampp start
clear

echo ' Abrindo pasta do XAMP em modo administrador......'
echo '----------------------------------------------------------'
sleep 3
thunar /opt/lampp/htdocs && firefox http://localhost/dev_bootstrap || exit

#echo 'Iniciando Firefox'
#echo '----------------------------------------------------------'
#sleep 3
#clear

#exit
