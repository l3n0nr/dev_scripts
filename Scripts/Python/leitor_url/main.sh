#!/usr/bin/env bash
#
#########################
# data criacao = 22/04/19
# ultima modif = 23/04/19
# versao       = 0.16
#########################
#
#### DESCRICAO
## Gerencia lista de links dos arquivos ~ wordpress | rss ~
#
## VARIAVEIS
## saida padrao da lista do wordpress
saida_wordpress="/tmp/wordpress_leitor"

## saida padrao da lista do rss
saida_rss="/tmp/rss_leitor"

## saida padrao das listas
merge_posts="/tmp/merge_leitor"

## saida final(wordpress+rss)
posts_twitter="/home/lenonr/Dropbox/Arquivos/Twitter/posts"       ## DEFAULT
# posts_twitter="/tmp/posts_twitter"

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
    cat $saida_wordpress >> $merge_posts
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