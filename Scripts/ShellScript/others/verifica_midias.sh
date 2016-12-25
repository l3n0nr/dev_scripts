#!/bin/bash
#
####################
# DESENVOLVIDO POR #
####################
#
# por lenonr(Lenon Ricardo) 
# 	contato: <lenonrmsouza@gmail.com>
#
#################################################################################
#										#
#	If I have seen further it is by standing on the shoulders of Giants.	#
#	(Se vi mais longe foi por estar de pé sobre ombros de gigantes)		#
#							~Isaac Newton		#
#										#
#################################################################################
#
##################################
# versão do script: 0.0.23.0.0.0 #
##################################
#
# legenda: a.b.c.d.e.f
# 	a = alpha[0], beta[1];
# 	b = erros na execução;	
# 	c = interações com o script + versões funcionando;
# 	d = correções necessárias;
# 	e = pendencias
# 	f = desenvolver
#
################################################################################
#
# Script testado em
#	-Xubuntu 16.04
#
################################################################################
#
################################################################################
# FUNCOES
#   -Realiza backup no formato de arquivo, diversos diretórios para o MEGA
#
################################################################################
filmes()
{
    #limpando tela
    clear
    
    #criando variaveis
    caminhofilmesorigem="/media/lenonr/lenonr-500GB/Arquivos/Filmes/"
    caminhofilmesdestino="/home/lenonr/MEGA/Outros/Lista/Filmes.txt"
    
    echo "Verificando Filmes, aguarde..."
    sleep 2
    
    #gerando arquivo
    ls $caminhofilmesorigem | grep -> $caminhofilmesdestino        
}

seriados()
{
    #limpando tela
    clear
    
    #criando variaveis
    caminhoseriadosorigem="/media/lenonr/lenonr-500GB/Arquivos/Seriados/"
    caminhoseriadosdestino="/home/lenonr/MEGA/Outros/Lista/Seriados.txt"
    
    echo "Verificando Seriados, aguarde..."
    sleep 2
    
    #gerando arquivo
    tree -f $caminhoseriadosorigem > $caminhoseriadosdestino    
}

documentarios()
{
    #limpando tela
    clear
    
    #criando variaveis
    caminhodocumentariosorigem="/media/lenonr/lenonr-500GB/Arquivos/Documentarios/"
    caminhodocumentariosdestino="/home/lenonr/MEGA/Outros/Lista/Documentarios.txt"
        
    echo "Verificando Documentários, aguarde..."	
    sleep 2
    
    #gerando arquivo    
    tree -f $caminhodocumentariosorigem > $caminhodocumentariosdestino
}

musicas()
{
    #limpando tela
    clear
    
    #criando variaveis
    caminhomusicasorigem="/home/lenonr/Music/Musicas/"
    caminhomusicasdestino="/home/lenonr/MEGA/Outros/Lista/Musicas.txt	"
    
    echo "Verificando Musicas, aguarde..."
    sleep 2
    
    #gerando arquivo    
    tree -f $caminhomusicasorigem > $caminhomusicasdestino
}

podcast()
{
    #limpando a tela
    clear
    
    #criando variaveis
    caminhopodcastorigem="/home/lenonr/Music/Podcast/"
    caminhopodcastdestino="/home/lenonr/MEGA/Outros/Lista/Podcast.txt"
    
    echo "Verificando Podcast's, aguarde..."
    sleep 2
    
    #gerando arquivo
    tree -f $caminhopodcastorigem > $caminhopodcastdestino
}
	
shows()
{

    #limpando a tela
    clear
    
    #criando variaveis
    caminhoshowsorigem="/home/lenonr/Videos/Shows/"
    caminhoshowsdestino="/home/lenonr/MEGA/Outros/Lista/Shows.txt"
    
    echo "Verificando Shows, aguarde..."
    sleep 2
    
    #gerando arquivo    
    ls $caminhoshowsorigem | grep - > $caminhoshowsdestino
}

################################################################################
#
documentarios
filmes
musicas
podcast
seriados
shows
#
################################################################################
clear
echo "Backup realizado!"
#sleep 5