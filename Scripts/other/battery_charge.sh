clear
echo
echo "Script para verificar o consumo da bateria"
echo
echo "OBS: É necessário ter o Tlp instalado, para que o script possa ser executado corretamente"
echo
for i in {0..100};
do
  clear
  sudo tlp stat -b | grep /sys/class/power_supply/BAT0/current_now
  sudo tlp stat -b | grep /sys/class/power_supply/BAT0/charge_now
  sleep 1
done
sleep 5
clear
