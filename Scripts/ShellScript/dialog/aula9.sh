#!/bin/bash
# Referencia: <https://youtu.be/nTRVum14QnA>

# CABEÇALHO

# CORPO DO SCRIPT

# criando variavel ano
ano=$(date +%Y)

# perguntando data nascimento usuario 
nascimento=$(dialog --stdout --calendar "Calendario" 0 0)
nascimento=$(echo "$nascimento" | cut -d "/" -f3)

# realizando calculo
nascimento=$(($ano-$nascimento))
# echo "O loko meu, voce tem " $nascimento " anos!"

# mostrando idade nascimento
dialog --infobox "Voce tem $nascimento anos!" 0 0 


# RODAPE
# mostrando calendario de acordo com data
# dialog --calendar "Calendario" 0 0 04 12 1996

# time box - hora do sistema
#dialog --timebox "Horario" 0 0