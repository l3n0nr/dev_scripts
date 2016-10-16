#criando arquivos
#rm .caminho.txt .base.txt .tipogenero.txt .genero.txt .numero.txt

#xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace0/last-image > .caminho.txt 
#caminho=`cat .caminho.txt`
#echo $caminho

#echo "CAMINHO DA PASTA(Extraido caminho)" 
#echo "------------------------------------------------------------"
#cat .caminho.txt
#echo "------------------------------------------------------------"

#extraindo caminho base
#echo "GENERO(Extraindo caminho base)"
#echo "------------------------------------------------------------"
#cat .caminho.txt | grep "/home/lenonr/MEGA/Imagens/Papeis de Parede/Belezas Naturais/wallhaven-" | 
#sed -e "s;/home/lenonr/MEGA/Imagens/Papeis de Parede/Belezas Naturais/wallhaven-;;g" > .base.txt | 
#cat .base.txt
#echo "------------------------------------------------------------"

#extraindo imagem para comparação
#echo "IMAGEM(Extraindo imagem)"
#echo "------------------------------------------------------------"
#cat .base.txt | sed -e "s;.jpg;;g" > .numero.txt |
#cat .numero.txt
#url=`cat .numero.txt`
#echo "------------------------------------------------------------"

#echo "ABRINDO IMAGEM NO WALLHAVEN"
#echo "------------------------------------------------------------"
#firefox https://alpha.wallhaven.cc/wallpaper/$url
#echo "------------------------------------------------------------"

#criando arquivos
#touch .caminho.txt .base.txt .tipogenero.txt .genero.txt .numero.txt


#extraindo caminho base
#echo "GENERO + IMAGEM(Extraindo caminho base)"
#echo "------------------------------------------------------------"
#cat .caminho.txt | grep "/home/lenonr/MEGA/Imagens/Papeis de Parede/" | sed -e "s;/home/lenonr/MEGA/Imagens/Papeis de Parede/;;g" > .base.txt | 
#cat .base.txt
#echo "------------------------------------------------------------"

#extraindo genero
#echo "***NUMERO DA IMAGEM(Extraindo genero)"
#echo "------------------------------------------------------------"
#cat .base.txt | grep "" | sed -e "s;/wallhaven-;;g" > .genero.txt 
#cat .genero.txt
#echo "------------------------------------------------------------"

#pasta da imagem e numero
#echo "NUMERO DA IMAGEM(Extraindo formato)"
#echo "------------------------------------------------------------"
#cat .genero.txt  | grep ".jpg" | sed -e "s;.jpg;;g" > .numero.txt 
#url=`cat .numero.txt`
#echo "------------------------------------------------------------"

#echo "ABRINDO IMAGEM NO WALLHAVEN"
#echo "------------------------------------------------------------"
#firefox https://alpha.wallhaven.cc/wallpaper/$url
#echo "------------------------------------------------------------"

#removendo arquivos antigos
#rm .caminho.txt .base.txt .numero.txt 

#criando novos arquivos
#touch .caminho.txt .base.txt .numero.txt 

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