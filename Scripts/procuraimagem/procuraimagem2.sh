#limpando a tela
clear
# 
# #criando arquivos temporarios
touch .caminho.txt .caminhocompleto.txt .base.txt .imagem.txt .numero.txt
# 
# #capturando caminho completo imagem
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace1/last-image > .caminhocompleto.txt
echo "Caminho do Wallpaper: " 

#extraindo caminho base
cat .caminhocompleto.txt | sed -e "s;/home/lenonr/MEGA/Imagens/Pictures/;;g" >  .caminho.txt 

cat .caminho.txt
# 
# #removendo raiz
echo "Por favor, digite o caminho da imagem"
read -p "" local

#extraindo caminho base
cat .caminho.txt | sed -e "s;$local;;g" > .base.txt 

#extraindo wallhaven
cat .base.txt | sed -e "s;wallhaven-;;g" > .imagem.txt

#extraindo extensao
cat .imagem.txt | sed -e "s;.jpg;;g" > .numero.txt 
#cat .imagem.txt | sed -e "s;.png;;g" > .numero.txt

#salvando numero da imagem em uma variavel
url=`cat .numero.txt` 

#iniciando o firefox
echo "Imagem identificada! Abrindo o Firefox..."
firefox https://alpha.wallhaven.cc/wallpaper/$url

# removendo arquivos temporarios
rm -r .caminho.txt .base.txt .imagem.txt .numero.txt

#limpando a tela
clear