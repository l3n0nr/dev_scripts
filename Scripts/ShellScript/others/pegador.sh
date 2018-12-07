# /usr/bin/env bash
# 
##########################################################
# DESCRICAO
#		CAPTURA INFORMACOES DO SISTEMA E MOSTRA VIA INTERFACE WEB
#
# VERSAO
# 		0.10
# 
# REFERENCIA
#		<https://youtu.be/dplRMXh2iac>
#
##########################################################
## variaveis
sistema=$(grep "^NAME" /etc/os-release  | cut -d '=' -f 2)
uptime=$(uptime -p)
var_log="/var/log"
# disco=$(df -HP)

## MOSTRANDO INFORMACOES
#echo "Sistema:" $sistema
#echo "Tempo da maquina ligada:" $uptime
#echo "Uso do sistema:" $disco

## trabalhando com html
cat > pegador.html <<EOF
<html lang="pt-br">
<head>
	<meta charset="UTF-8">
	<title> PEGador $HOSTNAME </title>
</head>

<body>
	<h1> PEGador $HOSTNAME </h1>
	<b> Nome do sistema: </b> $sistema <br>
	<b> Uptime: </b> $uptime <br>
	<b> Log de $var_log: </b> <br>
	$(
		cd $var_log
		for x in *; do
			echo "${x}<br>"
		done
	)
</body>

EOF

## chamando navegador
firefox pegador.html

## removendo arquivo gerado automaticamente
rm pegador.html