#!/usr/bin/env bash
#
#########################
# data criacao = 13/03/19
# ultima modif = 22/03/19
# versao       = 0.51
#########################
#
array=( nasaspaceflight.com spaceflightnow.com cafeeciencia.com.br \
        spacetoday.com.br ceticismo.net teslarati.com \
        segurancalegal.com portalcafebrasil.com.br space.nss.org \
        alociencia.com.br manualdomundo.com.br rocketsciencebr.com \
        dragoesdegaragem.com revistapesquisa.fapesp.br almaobservatory.org \
        emagrecerdevez.com ablc.org.br)

post="/wp-json/wp/v2/posts/"

## saida do arquivo
# saida="/home/lenonr/Dropbox/Arquivos/Twitter/posts"
# saida="/tmp/testando_twitter"
saida="/home/lenonr/Downloads/Arquivos/Twitter/posts"

## saida para organizacao dos links pelo script = NAO COMENTAR
saida1="/tmp/testando_twitter1"
#

check_files()
{
    if [[ -e $saida ]]; then
        touch $saida
    fi

    if [[ -e $saida1 ]]; then
        touch $saida1
    fi
}

catch()
{
    for (( i = 0; i <= ${#array[@]}-1; i++ )); do 
        link=${array[$i]}"$post"

        lynx --dump $link | \
        jq --indent 0 '.[] | [.title.rendered, .link]' | \
        sed -e 's/\(\["\|"\]\)//g' -e 's/"."/: /' | \
        sed 's/$/ (BOT CHECK:'$(date +%d-%h_%H:%M)')/' >> $saida 
    done
}

main()
{
    check_files
    echo "" > $saida    
    catch
    awk 'NF' $saida > $saida1
    sort -R $saida1 > $saida
}

main