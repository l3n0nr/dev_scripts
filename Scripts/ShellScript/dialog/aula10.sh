#!/bin/bash

# CABEÇALHO
# Referencia: <https://youtu.be/QDF5u4q7oEU>

# CORPO DO SCRIPT
{ read nome; read idade; read cpf; } \
< <(dialog  --stdout --no-mouse\
			--form "Pegador de dados" \
			0 0 0 \
			"Nome:"  1 1 "" 1 1 40 40 \
			"Idade:" 2 1 "" 2 1 10 2 \
			"CPF:"   3 1 "" 3 1 10 10
)

echo "Nome: $nome"
echo "Idade: $idade"
echo "CPF: $cpf"

# RODAPE

# filtrando campos
# nome=$(echo $dados | cut -d ' ' -f 1)
# idade=$(echo $dados | cut -d ' ' -f 2)
# cpf=$(echo $dados | cut -d ' ' -f 3)

#"titulo" "linha" "coluna" "dado" "linha" "coluna" "comprimento" "tamanholimite"
