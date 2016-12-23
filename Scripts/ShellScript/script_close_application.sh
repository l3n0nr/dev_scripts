#Iniciando modulos
#echo "Iniciando modulo do Dropbox"
#echo "-------------"
#dropbox start
#sleep 3
#echo "-------------"
#clear
#echo "Dropbox Iniciado!"
#echo "-------------"
#clear

#Fechando modulos
#echo "Fechando modulo do Dropbox"
#echo "-------------"
#dropbox stop
#sleep 3
#echo "-------------"
#clear
#echo "Dropbox finalizado"
#echo "-------------"
#clear


#FORMA RESUMIDA
#dropbox stop -i | killall -INT megasync -i | killall -INT transmission-gtk -i |
#megasync | dropbox start | transmission-gtk --minimized

clear
echo "Com este script, você pode iniciar ou desativar os aplicativos de transmissão de arquivos[Dropbox, MegaUpload e o Transmission], o que você deseja fazer?  Digite 0, para Desativar ou 1 para Iniciar" 
read v
if [$v = 0]; then
	dropbox stop -i | killall -INT megasync -i | killall -INT transmission-gtk -i 
elif [$v = 1]; then
	megasync | dropbox start | transmission-gtk --minimized 
else
	echo "erro!"
fi