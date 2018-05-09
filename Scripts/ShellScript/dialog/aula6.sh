#!/bin/bash
#
# CABEÇALHO DO SCRIPT
# Referencia: <https://youtu.be/9nerGZZJ6Mc?list=WL>
# Titulo: <Raio-X dialog - AULA #5>
#
# CORPO DO SCRIPT
# radiolist
# escolha=$(
#     dialog --stdout --radiolist "Escolha algo" \
#         0 0 0 \
#         "Editor" "Edite seus textos" on \
#         "Internet" "Use a Internet" off \
#         "Chat" "Fale com amigos" off
# )
# echo $escolha
#
# checklist
# escolha=$(
#     dialog --stdout --separate-output \
#         --help-button --help-label "Ajuda" \
#         --checklist "Escolha algo" \
#         0 0 0 \
#         "Editor" "Edite seus textos" on \
#         "Internet" "Use a Internet" on \
#         "Chat" "Fale com amigos" off
# )
#
# # verificando Ajuda
# [ $? -eq 2 ] && dialog --msgbox "Ajuda" 0 0
#
# # mostrando saidas
# echo "$escolha" |
# # lendo saidas da string
# while read escolha; do
#         case $escolha in
#             Chat) mousepad & ;;
#             Internet) firefox & ;;
#             Chat) echo "Ola, tudo bem?" & ;;
#         esac
# done
# EXERCICIO PROPOSTO
escolha=$(
dialog  --stdout --separate-output \
        --help-button --help-label "Ajuda" \
        --checklist "Escolha algo" \
        0 0 0 \
        "Firefox" "Gosto do Firefox" off \
        "Mousepad" "Gosto do MousePad" off \
)

# verificando mensagem de ajuda
[ $? -eq 2 ] && dialog --msgbox "Ajuda" 0 0

# mostrando saidas
echo "$escolha" |
# lendo saidas
while read escolha; do
    case $escolha in
        Firefox) firefox & ;;
        Mousepad) mousepad & ;;
    esac
done

# RODAPE DO SCRIPT
# separando em linhas a saida do script: parametro --separate-output and protection output string
