#!/usr/bin/env bash
#
#########################
# data criacao = 13/03/19
# ultima modif = 17/03/19
# versao       = 0.47
#########################
#
array=( nasaspaceflight.com spaceflightnow.com cafeeciencia.com.br \
        spacetoday.com.br ceticismo.net teslarati.com \
        mensageirosideral.blogfolha.uol.com.br segurancalegal.com portalcafebrasil.com.br \
        alociencia.com.br manualdomundo.com.br rocketsciencebr.com \
        dragoesdegaragem.com avioesemusicas.com revistapesquisa.fapesp.br \
        almaobservatory.org emagrecerdevez.com ablc.org.br )

post="/wp-json/wp/v2/posts/"

## saida do arquivo
# saida="/home/lenonr/Dropbox/Arquivos/Twitter/posts"
saida="/tmp/testando_twitter"

## saida para organizacao dos links pelo script = NAO COMENTAR
saida1="/tmp/testando_twitter1"
#
catch()
{
    for (( i = 0; i <= ${#array[@]}-1; i++ )); do 
        link=${array[$i]}"$post"

        lynx --dump $link | \
        jq --indent 0 '.[] | [.title.rendered, .link]' | \
        sed -e 's/\(\["\|"\]\)//g' -e 's/"."/: /' | \
        sed 's/$/ (BOT READ:'$(date +%d-%h_%H:%M)')/' >> $saida 
    done
}

main()
{
    echo "" > $saida    
    catch
    awk 'NF' $saida > $saida1
    sort -R $saida1 > $saida
}

main