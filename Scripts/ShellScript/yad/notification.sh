#!/bin/bash
# Referencia: <https://www.vivaolinux.com.br/artigo/Apresentando-o-Yad-zenity-melhorado?pagina=3>
#
#
# yad com --notification
# mostra uma notificação no painel, na área de notificação
# neste exemplo verifico a hora e uma tarefa associada a mesma
HORA=$(date +%H)
if [ "$HORA" -lt 06 ]; then
   FAIXA="1"
else
   if [ "$HORA" -lt 12 ]; then
      FAIXA="2"
   else
      if [ "$HORA" -lt 18 ]; then
         FAIXA="3"
      else
         if [ "$HORA" -le 24 ]; then
            FAIXA="4"
         fi
      fi      
   fi
fi
case "$FAIXA" in
   1)
      MSG="Bom sonhos...."
   ;;
   2)
      MSG="Bom dia \o/"
   ;;
   3)
      MSG="Boa tarde"
   ;;
   4)
      MSG="Aproveite o fim do dia"
   ;;
esac
yad --notification \
   --image="appointment-soon" \
   --text "$MSG - clique para atualizar o sistema" \
   --command "terminator --command='su root'"

#.EOF 