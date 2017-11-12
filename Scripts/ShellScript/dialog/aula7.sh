#!/bin/bash
#
# CABEÇALHO DO SCRIPT
# Referencia: <https://youtu.be/drVX-3i1NUo>
#             <https://www.youtube.com/watch?v=nEM0ukAcKxo>
# Titulo: <Raio-X dialog - AULA #3 (RESUMÃO)>
#         <Raio-X dialog - AULA #6 (RESUMÃO)>
# Fonte do Script; <https://notabug.org/jeffersonrocha/programa.sh/src/master/programa.sh>

# CORPO DO SCRIPT
user="lenonr"
pass="123"
program="Versao 0.5"
#
# funcoes
status()
{
	case $? in
		1) exit 1 ;;
		255) dialog --defaultno \\
        --yes-label "Sim" --no-label "Nao" \
        --yesno "Deseja sair?" 0 0
		[ $? -eq 0 ] && exit 0 ;;
	esac
}
#
# criando caixas de mensangem
dialog  --sleep 2 \
	--infobox "$program" 0 0

dialog  --sleep 0 \
	--backtitle "$program"  \
	--no-shadow \
    --yes-label "Sim" --no-label "Nao" \
    --yesno "Deseja se logar?" 0 0
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
	login=$(
				dialog  --stdout --title "Tela de login" --backtitle "$program" \
						--no-shadow \
		            	--ok-label "Executar" --cancel-label "Cancelar" \
						--begin 2 15 \
						--inputbox "Usuario" 0 0 \
						--and-widget \
						--begin 2 45 \
						--insecure --passwordbox "Digite sua senha: " 0 0 0
	)

	login_user=$(echo $login | cut -d ' ' -f1)
	login_pass=$(echo $login | cut -d ' ' -f2)

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

#mostrando mensagem de sucesso
dialog --infobox "Logou" 0 0

#chamando funcao status
status

# criando loop menu
while :; do
	# trabalhdo com menu
	opcao_menu=$(
				dialog --stdout --title "Menu" --backtitle "$program" \
					   --no-shadow \
					   --ok-label "Executar" --cancel-label "Cancelar" \
					   --menu "Bem vindo $user" 0 0 0 \
					   "Internet" "Acessar Internet"  \
					   "Editor" "Editar Textos"
	)

	# verificando saida do usuario
	case $opcao_menu in
		Internet) firefox >/dev/null 2>/dev/null ;;
		Editor) mousepad  >/dev/null 2>/dev/null ;;
	esac
done
#
# RODAPE DO SCRIPT
# >/dev/null 2>/dev/null - fechando saidas de erros;
