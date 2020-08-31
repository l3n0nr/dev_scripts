# removendo docker 
echo "Apagando pasta na força bruta.."
rm -r /usr/bin/docker

echo "Removendo pacotes e limpando!"
apt purge docker docker-ce && apt autoremove
