#!/usr/bin/env bash
#
#########################
# data criacao = 17/03/19
# ultima modif = 17/05/19
# versao       = 0.10
#########################
#
## chamando arquivo externo com variaveis
source variables.conf

check_files()
{
    if [[ -e $saida_wordpress_podcast ]]; then
        touch $saida_wordpress_podcast
    else
        echo "" > $saida_wordpress_podcast
    fi

    if [[ -e $trash_wordpress_podcast ]]; then
        touch $trash_wordpress_podcast
    else
        echo "" > $trash_wordpress_podcast
    fi
}

catch()
{
    for (( i = 0; i <= ${#array_wordpress_podcast[@]}-1; i++ )); do 
        link=${array_wordpress_podcast[$i]}"$post_podcast"

        lynx --dump $link | \
        jq --indent 0 '.[] | [.title.rendered, .link]' | \
        sed -e 's/\(\["\|"\]\)//g' -e 's/"."/: /' >> $saida_wordpress_podcast 
    done
}

main()
{
    check_files
    echo "" > $saida_wordpress_podcast    
    catch
    awk 'NF' $saida_wordpress_podcast > $trash_wordpress_podcast
    sort -R $trash_wordpress_podcast > $saida_wordpress_podcast
}

main