	#limpando a tela
	clear

	#capturando caminho da imagem
	xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace1/last-image > .caminho.txt

	#extraindo caminho base
	cat .caminho.txt | sed -e "s;/home/lenonr/MEGA/Imagens/Papeis de Parede/Belezas Naturais/wallhaven-;;g" > .base.txt 

	#extraindo imagem
	cat .base.txt | sed -e "s;.jpg;;g" > .numero.txt 
	url=`cat .numero.txt` 

	#echo "ABRINDO IMAGEM NO WALLHAVEN"
	firefox https://alpha.wallhaven.cc/wallpaper/$url