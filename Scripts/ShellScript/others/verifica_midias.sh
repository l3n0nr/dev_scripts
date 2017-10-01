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
###################################################
# versão do script:              0.0.40.0.0.1     #
# # ultima ediçao realizada:      [01/10/17]      #
###################################################
#
# legenda: a.b.c.d.e.f
# 	a = alpha[0], beta[1];
# 	b = erros na execução;	
# 	c = interações com o script + versões funcionando;
# 	d = correções necessárias;
#           não está salvando os dados dos diretórios nos arquivos de texto(testado dia 08/02 - 22:40)
# 	e = pendencias
# 	f = desenvolver
#           - Definir variaveis globais como padrao, modificar apenas o caminho final nas variaveis locais dentro de cada função.
#
#       OBS: 
#           - Verificar se o "tree" está instalado na máquina, senão algumas funções não irão funcionar.
#             (apt install tree -y)
#           - Criar os arquivos necessarios, antes de realizar o backup na primeira vez que o script for executado.
#            
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
#   -Realiza backup no formato de arquivos de texto de diversos diretórios para o MEGA.
#
################################################################################

#criando variaveis globais
# caminhoorigem="/media/lenonr/BACKUP/Arquivos/"
# caminhodestino="/home/lenonr/MEGA/Outros/Lista/"

# criando arquivo dentro de cada funcao, para evitar possiveis erros
#     touch $caminhodestino/Filmes.txt

filmes()
{    
    #criando variaveis
    caminhofilmesorigem="/media/lenonr/BACKUP/Arquivos/Filmes"
        
    caminhofilmesdestino="/home/lenonr/MEGA/Outros/Lista/Filmes.txt"
    caminhofilmesdestinohd="/media/lenonr/BACKUP/Arquivos/Filmes/Filmes.txt"    
    
    # deletando arquivos por garantia
#     printf "[*] Deletando arquivos já existentes...\n"
#     rm $caminhofilmesdestino $caminhofilmesdestinohd
    
    # mostrando mensagem de execução 
    printf "[*] Verificando Filmes, aguarde...\n"
    sleep 2
    
    # gerando arquivo
    tree $caminhofilmesorigem > $caminhofilmesdestino
    
    # copiando arquivo
    cat $caminhofilmesdestino > $caminhofilmesdestinohd
}

seriados()
{   
    #criando variaveis
    caminhoseriadosorigem="/media/lenonr/BACKUP/Arquivos/Seriados"
    
    caminhoseriadosdestino="/home/lenonr/MEGA/Outros/Lista/Seriados.txt"    
    caminhoseriadosdestinohd="/media/lenonr/BACKUP/Arquivos/Seriados/Seriados.txt"
    
    # deletando arquivos por garantia
#     printf "[*] Deletando arquivos já existentes.. \n"
#     rm $caminhoseriadosdestino $caminhoseriadosdestinohd
    
    # mostrando mensagem de execução
    printf "[*] Verificando Seriados, aguarde...\n"
    sleep 2
    
    # gerando arquivo
    tree $caminhoseriadosorigem > $caminhoseriadosdestino
    
    # copiando arquivo
    cat $caminhoseriadosdestino > $caminhoseriadosdestinohd
}

documentarios()
{
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
    #criando variaveis
    caminhopodcastorigem="/home/lenonr/Music/Podcast/"
    
    caminhopodcastdestino="/home/lenonr/MEGA/Outros/Lista/Podcast.txt"
    
    echo "Verificando Podcast's, aguarde..."
    sleep 2
    
    #gerando arquivo
    tree -f $caminhopodcastorigem > $caminhopodcastdestino
}

podcast_pendentes()
{
    #criando variaveis
    caminhopodcastorigem="/home/lenonr/Downloads/Arquivos/Podcast"
    
    caminhopodcastdestino="/home/lenonr/MEGA/Outros/Lista/Podcast_Pendentes.txt"
    
    echo "Verificando Podcast's pendentes, aguarde..."
    sleep 2
    
    #gerando arquivo
    tree -f $caminhopodcastorigem > $caminhopodcastdestino
    
}
	
shows()
{
    #criando variaveis
    caminhoshowsorigem="/home/lenonr/Videos/Shows/"
    
    caminhoshowsdestino="/home/lenonr/MEGA/Outros/Lista/Shows.txt"
    
    echo "Verificando Shows, aguarde..."
    sleep 2
    
    #gerando arquivo    
    ls $caminhoshowsorigem | grep - > $caminhoshowsdestino
}

games()
{
    #mostrando mensagem    
    echo "Verificando save The Legend of Korra, aguarde..."
    
    sleep 3
    
    #SAVE 1
    caminhogamessorigem1="/home/lenonr/Korra/Gamedata.dat"
    caminhogamesdestino1="/media/lenonr/lenonr-500GB/Arquivos/Jogos/Avatar/TLOK/Backup"
                    
        #copiando arquivo
        cp $caminhogamessorigem1 $caminhogamesdestino1
    
    #SAVE 2
    caminhogamessorigem2="/home/lenonr/Korra/SystemData.dat"
    caminhogamesdestino2="/media/lenonr/lenonr-500GB/Arquivos/Jogos/Avatar/TLOK/Backup"    
    
        #coṕiando arquivo
        cp $caminhogamessorigem2 $caminhogamesdestino2
    
    #SAVE 3 - MEGA - ARQUIVO 1
    caminhogamesdestino3="/home/lenonr/MEGA/Jogos/Avatar/Save/TLOK"
    
        #coṕiando arquivo
        cp $caminhogamessorigem1 $caminhogamesdestino3
    
    #SAVE 3 - MEGA - ARQUIVO 2
    caminhogamesdestino4="/home/lenonr/MEGA/Jogos/Avatar/Save/TLOK"
    
        #coṕiando arquivo
        cp $caminhogamessorigem2 $caminhogamesdestino4
}

################################################################################
#
clear
printf "[+] Executando leitura das pastas \n"
printf "################################################### \n"
# documentarios
filmes
# games
# musicas
#podcast
# podcast_pendentes
seriados
# shows
#
printf "################################################### \n"
printf "[+] Script finalizado! \n"
################################################################################
#sleep 5
