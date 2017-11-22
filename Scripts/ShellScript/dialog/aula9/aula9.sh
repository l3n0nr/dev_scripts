#!/bin/bash
#
# CABEÇALHO
# Referencia: <https://youtu.be/cht-cJR33Zs>
#
# COMPONENTES USADOS: EditBox e TextBox
#
# CORPO DO SCRIPT
# criando caixa de edição de texto
arquivo=$(dialog --stdout --editbox "texto" 0 0)

# verificando saida 
[ "$?" = "0" ] && echo "$arquivo" > texto && dialog --textbox "texto" 0 0

# 
# RODAPE
# echo "Olá, tudo bem??" > texto
# cat texto
# dialog --editbox "texto" 0 0
# dialog --textbox "/etc/passwd" 0 0 