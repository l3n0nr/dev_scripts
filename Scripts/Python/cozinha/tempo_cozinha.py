#!/usr/bin/python
#-*- coding: UTF-8 -*-

import os, sys

####	CABEÇALHO DO SCRIPT
# versão do script: 0.10
# data de criação: 01/10/17
# ultima modificação: 05/10/17
#
## SCRIPT PARA CALCULAR O TEMPO MEDIO(IDEAL) PARA O PREPARO DE UMA REFEIÇÃO PARA UM COZINHEIRO PREGUIÇO, BUSCANDO ASSIM, OTIMIZAR SEU TEMPO.
#
### CRIANDO LOGICA
# TEMPO DE PREPARO DA REFEIÇÃO NAO PODE SER MAIOR DO QUE O DOBRO, DO TEMPO MAXIMO DE CONSUMO.
# EXEMPLO: TEMPO PARA ALMOÇAR, 30 MINUTOS ENTÃO TEMPO MAXIMO(IDEAL) PARA PREPARO DO ALMOÇO É DE NO MAXIMO 1 HORA.
#
####	CORPO DO SCRIPT
#
# limpando tela
os.system('cls' if os.name == 'nt' else 'clear')

# mostrando mensgem inicial
print "###################################################################################"
print "Script para calculo do tempo ideal para preparo de uma refeição. Seja bem vindo(a)!"
print "###################################################################################"

# nova linha
print

# criando variaveis
tipo_alimentacao = raw_input("Digite qual a refeicao que voce ira realizar: ")
tempo_alimentacao= input("Digite o tempo(medio) que voce leva para consumir essa refeição? ")
tempo_preparo = tempo_alimentacao * 2

# criando verificacao simples
if tempo_alimentacao <= 3 or tempo_alimentacao >= 40:
	print
	print "O que voce esta comendo? Deve ser uma porcaria! Tome vergonha na cara e vá comer algum alimento de verdade!"
else:
	print
	print "Caso voce vá preparar o(a)", tipo_alimentacao, "seria interessante voce preparar em", tempo_preparo, "minutos(tempo maximo)"

####	RODAPE DO SCRIPT
# Sim eu sim, é um script de noob! porem foi criado para aprendizagem na linguagem python, tenha paciencia!
