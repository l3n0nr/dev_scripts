#!/bin/bash

## gerando mensagem
text=$(cat <<EOF
ashduhuasdhusadhudsauhdsauhhusadhudsahudsahudashudshau 
sadudasuhdsahdsauhdsa 
dsasdahudsuhahudsa 
EOF
)

## gerando arquivo
echo $text > arquivo.txt

## mostrando arquivo
cat arquivo.txt
