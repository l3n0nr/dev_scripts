#!/usr/bin/env bash
#
#########################
# data criacao = 18/03/19
# ultima modif = 22/04/19
# versao       = 0.20
#########################
#
#### DESCRICAO
## base de conversao
rsstojson="https://feeds-hourly.com/rss_2_json.php?nolimit=Yes&fd=https://feeds.feedburner.com/"

## lista de url via RSS, nao compativeis com o wordpress
# array=( naruhodopodcast pizzadedados CastalioPodcastMP3 )            ## VERIFICAR ERRO
array=( pizzadedados )

## saida do arquivo
saida="/tmp/rss_leitor"

## area de transferencia do script
saida1="/tmp/trash_leitor"

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
        link="$rsstojson"${array[$i]}

        lynx --dump $link | \
        jq --indent 0 ' . | .items[] | [.url]' | \
        sed -e 's/\(\["\|"\]\)//g' -e 's/"."/: /' -e 's/\[null]//g' >> $saida 
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