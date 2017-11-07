#!/bin/bash
#
# Referencia: <https://youtu.be/FebtA9QY0ng>
# Titulo: <Blocos e agrupamentos (Shell)>
#
# CABEÇALHO
#
# STRINGS
# '' : Protegem uma string mas nao reconhece caracteres especiais;
# $'': Protege uma string e reconhece alguns caracteres especiais;
# "" : Protege uma string e reconhece todos caracteres especiais;
#
# OPERACOES ARITMETICAS
# (()) : realizam operacoes aritmeticas;
# $(()): realiza operacoes aritmeticas e retornam o resultado da operacao;
#
# EXECUTANDO COMANDOS - SUBSHELL
#  `` : Retornam o valor/resultado;
# $() : Retornam o valor/resultado;
# ()  : Apenas executa uma comando, na subshell;
#
# TESTES
#  [] : Realizam testes, padrao POSIX; Ideal para alias;
# [[]]: Realizam testes, mais completo porem restrito ao BASH; Ideal para usar operadores logicos && , ||, etc.
#
# AGRUPAMENTOS
#  {} : Agrupa comandos em blocos;
#

# CORPO DO SCRIPT
# exemplos
    # STRINGS
    # echo '$HOME' "$HOME"
    # printf s'\n033[32;1m OI TUDO BEM? \033[m'

    # OPERACOES ARITMETICAS
    # echo $((5>3))

    # SUBSHELL
    # echo `ls`   # `ls` - da erro, errado! - nao aconselhavel usar pois pode confundir na hora da revisao do codigo!
    # echo $(pwd) # $(pwd ) - da erro, errado!

    # TESTES
    # echo [ 5 -eq 5 ]
    # [[ 5 > 5 || 5 < 10 ]]

    # AGRUPAMENTOS
    { pwd; pwd; pwd };}

# RODAPE
