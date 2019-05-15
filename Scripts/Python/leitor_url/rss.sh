#!/usr/bin/env bash
#
#########################
# data criacao = 18/03/19
# ultima modif = 15/05/19
# versao       = 0.28
#########################
#
## chamando arquivo externo de variaveis
source variables.conf

check_files()
{
    if [[ -e $saida_rss ]]; then
        touch $saida_rss
    else
        echo "" > $saida_rss
    fi

    if [[ -e $trash_rss ]]; then
        touch $trash_rss
    else
        echo "" > $trash_rss
    fi
}

catch()
{
    for (( i = 0; i <= ${#array_rss[@]}-1; i++ )); do 
        link="$rsstojson"${array_rss[$i]}

        lynx --dump $link | \
        jq -R --raw-output '.' | grep 'url' | \
        awk '{print $3}' | \
        sed 's/\(\["\|"\]\)//g' | \
        sed 's/"."/: /' | \
        sed 's/,/ /' | \
        sed 's/"",//g'  | \
        sed 's/""//g' >> $saida_rss
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