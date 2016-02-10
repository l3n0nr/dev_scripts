clear
echo 'Iniciando o servidor Samba, espere..'
echo '------------------------------------'
sudo /opt/lampp/lampp start

clear
echo 'Serviço iniciado com sucesso!'
echo '------------------------------------'
sleep 15
clear

echo ' Abrindo pasta do XAMP em modo administrador......'
echo '----------------------------------------------------------'
sleep 5
clear
echo 'Pasta aberta, aguardando para fechar...'
echo '----------------------------------------------------------'
sudo thunar /opt/lampp/htdocs
echo '----------------------------------------------------------'
echo 'Finalizado!'

