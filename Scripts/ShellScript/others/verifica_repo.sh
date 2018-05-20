#!/bin/zsh
# Verifica se repositorio do github, contem modificacao
verifica=$(git status | grep "Changes not" > /dev/null; echo $?)

if [[ $verifica == "0" ]]; then
	echo "com modificacao"
elif [[ $verifica == "1" ]]; then
	echo "sem modificacao"
else
	echo "erro"
fi