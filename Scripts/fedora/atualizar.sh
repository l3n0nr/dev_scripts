#clear
#echo 
#echo
#echo 'Você tem estes arquivos de repositório em seu computador'
#echo '--------------------------------------------------------'
#sudo dnf repolist 
#echo '--------------------------------------------------------'

clear
#echo 
#echo
echo 'Atualizando os seus pacotes, espere...'
echo '------------------------------------------------------'
sudo dnf distro-sync 
echo '------------------------------------------------------'

clear
#echo 
#echo
echo 'Removendo versões de programas antigas, espere...'
echo '------------------------------------------------------'
sudo dnf autoremove -y 
echo '------------------------------------------------------'

clear
#echo 
#echo
echo 'Atualizando o sistema, espere...'
echo '----------------------------------------------------'
sudo dnf update -y 
echo '----------------------------------------------------'

clear
#echo 
#echo 
echo 'Limpando coisas no sistema, espere...'
echo '-----------------------------------------------------'
sudo dnf clean all
echo '                                                  ----------------------------------------------------------'
clear
#echo
#echo
echo 'Sistema Atualizado com sucesso!'
echo '-----------------------------------------------------'
screenfetch
sleep 30
