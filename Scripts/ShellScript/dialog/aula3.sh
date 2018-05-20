#!/bin/bash
#
## CABEÇALHO
# Referencia: <https://youtu.be/drVX-3i1NUo>
# Titulo: <Raio-X dialog - AULA #3 (RESUMÃO)>
# Fonte do Script; <https://notabug.org/jeffersonrocha/programa.sh/src/master/programa.sh>
#
## CORPO DO SCRIPT
# variaveis do script
user="lenonr"
pass="123"
program="Versao 0.1"
#
# funcoes
function status {
	case $? in
		1) exit 1 ;;
		255) dialog --defaultno --yesno "Deseja sair?" 0 0 
		[ $? -eq 0 ] && exit 0 ;;
	esac
}
#
# criando caixas de mensangem
dialog  --sleep 2 \
	--infobox "$program" 0 0 

dialog  --sleep 0 \
	--backtitle "$program" --yesno "Deseja se logar?" 0 0 
#
# executando funcoes
status	# chamando funcao status

# criando verificador
#echo "hahahaha"

# variaveis de validação de tentativas
i=0 

# loop de tentativas
while (( $i < 3 )); do

	# variaveis de login
	login_user=$(
		dialog  --stdout --title "Tela de login" --backtitle "$program" \
			--inputbox "Usuario" 0 0 
	)

	login_pass=$(
		dialog  --stdout --title "Tela de Login" --backtitle "$program" \
			--insecure --passwordbox "Senha" 0 0 
	)

	# verificador de usuario 
	if [ "$user" = "$login_user" ] && [ "$pass" = "$login_pass" ]; then
		printf "\n LOGOU! \n"
		break
	else
		dialog --sleep 2 --infobox "Usuario ou senha inválidos..."  2 35
		let i++
		(( $i == 3 )) && dialog --sleep 1 --infobox "Tentativas esgotadas!" 0 0 && exit 1
	fi
done

dialog --infobox "Logou" 0 0
#
## RODAPE
