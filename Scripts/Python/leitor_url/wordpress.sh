#!/usr/bin/env bash
#
#########################
# data criacao = 13/03/19
# ultima modif = 12/05/19
# versao       = 0.64
#########################
#
## chamando arquivo externo com variaveis
source variables.conf

check_files()
{
    if [[ -e $saida_wordpress ]]; then
        touch $saida_wordpress
    else
        echo "" > $saida_wordpress
    fi

    if [[ -e $trash_wordpress ]]; then
        touch $trash_wordpress
    else
        echo "" > $trash_wordpress
    fi
}

catch()
{
    for (( i = 0; i <= ${#array_wordpress[@]}-1; i++ )); do 
        link=${array_wordpress[$i]}"$post"

        lynx --dump $link | \
        jq --indent 0 '.[] | [.title.rendered, .link]' | \
        sed -e 's/\(\["\|"\]\)//g' -e 's/"."/: /' >> $saida_wordpress 
        # sed 's/$/ (BOT CHECK:'$(date +%d-%h_%H:%M)')/' >> $saida_wordpress 
    done
}

main()
{
    check_files
    echo "" > $saida_wordpress    
    catch
    awk 'NF' $saida_wordpress > $trash_wordpress
    sort -R $trash_wordpress > $saida_wordpress
}

main