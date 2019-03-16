#!/usr/bin/env bash
#
#########################
# data criacao = 13/03/19
# ultima modif = 15/03/19
# versao       = 0.41
#########################
#
array=( nasaspaceflight.com spaceflightnow.com cafeeciencia.com.br \
        spacetoday.com.br ceticismo.net teslarati.com \
        mensageirosideral.blogfolha.uol.com.br segurancalegal.com portalcafebrasil.com.br \
        alociencia.com.br manualdomundo.com.br rocketsciencebr.com \
        dragoesdegaragem.com avioesemusicas.com blogs.esa.int \
        almaobservatory.org emagrecerdevez.com ablc.org.br)

array_hastag=( NASASpaceflight SpaceflightNow cafeeciencia1 \
               SpaceToday1 ceticismo Teslarati \
               salnog SegurancaLegal Cafe_Brasil \
               alociencia manualdomundo PassoPequeno \
               dragoesgaragem avioesemusicas esaspaceflight \
               almaobs rodrigo_polesso jcsouto )

## saida do arquivo
saida="/home/lenonr/Dropbox/Arquivos/Twitter/posts"
# saida="/tmp/testando_twitter"

## saida para organizacao dos links pelo script = NAO COMENTAR
saida1="/tmp/testando_twitter1"
#
catch()
{
    for (( i = 0; i <= ${#array[@]}-1; i++ )); do 
        link=${array[$i]}"/wp-json/wp/v2/posts/"

        lynx --dump $link | \
        jq --indent 0 '.[] | [.title.rendered, .link]' | \
        sed -e 's/\(\["\|"\]\)//g' -e 's/"."/: /' >> $saida
        # sed 's/$/ @'${array_hastag[$i]}'/' >> $saida     ### NAO DA PARA FAZER, TWITTER ENTENDE COMO SPAM !! 
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