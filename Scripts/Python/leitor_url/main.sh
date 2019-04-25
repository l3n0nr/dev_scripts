#!/usr/bin/env bash
#
#########################
# data criacao = 22/04/19
# ultima modif = 25/04/19
# versao       = 0.18
#########################
#
## chamando arquivo externo de variaveis
source variables.conf

check_wordpress()
{
    source wordpress.sh
}

check_rss()
{
    source rss.sh
}

merge_files()
{
    cat $saida_wordpress > $merge_posts
    cat $saida_rss >> $merge_posts        
}

sort_posts()
{
    sort -R $merge_posts > $posts_twitter
}

main()
{
    check_wordpress
    check_rss
    merge_files    
    sort_posts
}

main