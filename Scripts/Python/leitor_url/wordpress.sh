#!/usr/bin/env bash
#
#########################
# data criacao = 13/03/19
# ultima modif = 23/04/19
# versao       = 0.61
#########################
#
#### DESCRICAO
## Lista arquivos compativeis com wordpress
#
array=( nasaspaceflight.com spaceflightnow.com cafeeciencia.com.br \
        spacetoday.com.br ceticismo.net teslarati.com \
        segurancalegal.com portalcafebrasil.com.br space.nss.org \
        alociencia.com.br manualdomundo.com.br rocketsciencebr.com \
        dragoesdegaragem.com revistapesquisa.fapesp.br \emagrecerdevez.com \
        ablc.org.br avioesemusicas.com)

## quantidades de posts para serem listados  - MAXIMO
qtd="99"

## percorre caminho completo do wordpress
post="/wp-json/wp/v2/posts/?per_page=$qtd"

## saida do arquivo
saida="/tmp/wordpress_leitor"

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
        link=${array[$i]}"$post"

        lynx --dump $link | \
        jq --indent 0 '.[] | [.title.rendered, .link]' | \
        sed -e 's/\(\["\|"\]\)//g' -e 's/"."/: /' | \
        sed 's/$/ (BOT CHECK:'$(date +%d-%h_%H:%M)')/' >> $saida 
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