#!/usr/bin/env bash
#
#########################
# data criacao = 18/03/19
# ultima modif = 27/04/19
# versao       = 0.23
#########################
#
## chamando arquivo externo de variaveis
source variables.conf

## CHECK
# É necessario tratar a variavel ~item~
# por causa de caracters especiais no titulo.

check_files()
{
    if [[ -e $saida_rss ]]; then
        touch $saida_rss
    fi

    if [[ -e $trash_rss ]]; then
        touch $trash_rss
    fi
}

catch()
{
    for (( i = 0; i <= ${#array_rss[@]}-1; i++ )); do 
        link="$rsstojson"${array_rss[$i]}

        lynx --dump $link | \
        jq --indent 0 ' . | .items[] | .url' | \
        sed -e 's/\(\["\|"\]\)//g' -e 's/"."/: /' -e 's/\[null]//g' >> $saida_rss
    done
}

main()
{
    check_files
    echo "" > $saida_rss    
    catch
    awk 'NF' $saida_rss > $trash_rss
    sort -R $trash_rss > $saida_rss
}

main