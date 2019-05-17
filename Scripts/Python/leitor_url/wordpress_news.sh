#!/usr/bin/env bash
#
#########################
# data criacao = 13/03/19
# ultima modif = 17/05/19
# versao       = 0.65
#########################
#
## chamando arquivo externo com variaveis
source variables.conf

check_files()
{
    if [[ -e $saida_wordpress_news ]]; then
        touch $saida_wordpress_news
    else
        echo "" > $saida_wordpress_news
    fi

    if [[ -e $trash_wordpress_news ]]; then
        touch $trash_wordpress_news
    else
        echo "" > $trash_wordpress_news
    fi
}

catch()
{
    for (( i = 0; i <= ${#array_wordpress_news[@]}-1; i++ )); do 
        link=${array_wordpress_news[$i]}"$post_news"

        lynx --dump $link | \
        jq --indent 0 '.[] | [.title.rendered, .link]' | \
        sed -e 's/\(\["\|"\]\)//g' -e 's/"."/: /' >> $saida_wordpress_news 
    done
}

main()
{
    check_files
    echo "" > $saida_wordpress_news    
    catch
    awk 'NF' $saida_wordpress_news > $trash_wordpress_news
    sort -R $trash_wordpress_news > $saida_wordpress_news
}

main