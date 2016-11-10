clear
echo "Removendo Eclipse"
echo "----------------------------------------------"
sudo apt-get autoremove eclipse* -y && rm -r ~/.eclipse/
echo "Removendo Atom"
echo "----------------------------------------------"
sudo apt-get remove atom -y
sudo apt-get purge atom -y
sleep 3
echo "Desinstalação completa!"
