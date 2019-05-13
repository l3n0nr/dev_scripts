#!/usr/bin/env bash
#
#########################
# data criacao = 22/04/19
# ultima modif = 12/05/19
# versao       = 0.23
#########################
#
## chamando arquivo externo de variaveis
source variables.conf

## importando arquivos 
check_wordpress()
{
    source wordpress.sh
}

check_rss()
{
    source rss.sh
}

check_nasa()
{
	source nasa.sh
}

check_hubble()
{
    source hubble.sh
}

check_apollo()
{
    source apollo_archive.sh
}

# agrupando arquivos
merge_files()
{
    cat $saida_wordpress > $merge_posts
    cat $saida_rss >> $merge_posts    
    cat $saida_nasa >> $merge_posts  
    cat $saida_hubble >> $merge_posts 
    cat $saida_apollo >> $merge_posts 
}

## misturando linhas | NAO MODIFICAR
sort_posts()
{
    sort -R $merge_posts > $posts_twitter
}

## chamando arquivos externos
check()
{
    check_wordpress
    check_rss
    check_nasa
    check_hubble
    check_apollo
}

## chamando funcao principal | NAO MODIFICAR
main()
{
    check
    
    merge_files    
    sort_posts
}

main