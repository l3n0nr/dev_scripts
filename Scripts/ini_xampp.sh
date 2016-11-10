clear
echo "Iniciando Xampp"
sudo /opt/lampp/lampp start
sleep 2
clear
echo "Abrindo Pasta do Xampp"
thunar /opt/lampp/htdocs
sleep 2
clear
echo "Abrindo Firefox"
firefox http://localhost/dev_bootstrap
sleep 2