clear
echo
echo "Script para verificar o consumo da bateria"
echo
echo "OBS: É necessário ter o Tlp instalado, para que o script possa ser executado corretamente"
echo
for i in {0..10};
do
  echo "$i´ verificacao"
  sudo tlp stat -b | grep /sys/class/power_supply/BAT0/current_now
done
sleep 5
clear
