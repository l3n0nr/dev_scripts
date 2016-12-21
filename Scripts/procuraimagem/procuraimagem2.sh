#FUNCIONANDO
################################################################################
    #limpando a tela
    #clear

    #capturando caminho da imagem
#   xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace1/last-image > .caminho.txt

    #extraindo caminho base
#   cat .caminho.txt | sed -e "s;/home/lenonr/MEGA/Imagens/Pictures/;;g" >  .base.txt 

    #extraindo imagem
    #cat .base.txt | sed -e "s;.jpg;;g" > .numero.txt 
    #url=`cat .numero.txt` 

    #echo $url
    #echo "ABRINDO IMAGEM NO WALLHAVEN"
    #firefox https://alpha.wallhaven.cc/wallpaper/$url
################################################################################

#LIXO
################################################################################
#REALIZANDO LEITURA ATRAVES DE VARIAVEIS
################################################################################
#limpando a tela
# clear
# 
# #criando arquivos temporarios
# touch .caminho.txt
# 
# #capturando caminho completo imagem
# caminho=`xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace1/last-image`
# 
# #removendo raiz
# echo $caminho | sed -e "s;/home/lenonr/MEGA/Imagens/Pictures;;g" > .caminho.txt
# 
# raiz=`cat .caminho.txt`
################################################################################
#limpando a tela
clear

#criandos arquivos para manipulação
touch .caminho.txt .base.txt .numero.txt .genero.txt .imagem.txt

#capturando caminho da imagem
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace1/last-image > .caminho.txt

#extraindo caminho base
cat .caminho.txt | sed -e "s;/home/lenonr/MEGA/Imagens/Pictures;;g" >  .base.txt 

#removendo wallhaven
cat .base.txt | sed -e "s;wallhaven-;;g" > .wallhaven.txt

#extraindo extensao imagem
cat .wallhaven.txt | sed -e "s;.jpg;;g" > .genero.txt 
#url=`cat .genero.txt` 

#removendo pasta
cat .genero.txt | sed -e "s;/?/;;g" > .imagem.txt

url=`cat .imagem.txt` 

echo $url

#removendo arquivos criados
rm .caminho.txt .base.txt .numero.txt .genero.txt .imagem.txt

#echo "ABRINDO IMAGEM NO WALLHAVEN"
#firefox https://alpha.wallhaven.cc/wallpaper/$url
