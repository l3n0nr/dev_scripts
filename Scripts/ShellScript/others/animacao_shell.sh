#!/bin/bash

# CABECALHO
#
# CORPO DO SCRIPT
#
# limpando tela
clear

# criando loop para mostrar animação
while :; do
    for i in / - \\ \|; do      # alterar animação
        echo -ne "\b$i"
    done

done
#
# RODAPE DO SCRIPT
# for i in O o 0; do    # animação em O
