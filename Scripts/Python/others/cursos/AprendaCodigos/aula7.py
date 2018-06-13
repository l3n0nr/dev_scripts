#!/usr/bin/python

# CABEÇALHO
#################################################
# Referencia
# Titulo: O que é Escopo em Python e como transferir valores entre definições
# Link: <https://youtu.be/UT88bywuHYE?list=PLV7VqBqvsd_3yRYYWrHkziPL6izzrUIkp>
#################################################

# CORPO DO SCRIPT
#################################################

# importando data
from datetime import date
import os

# limpa a tela
os.system('clear')

# definicaçao de variaveis
# capturando data
anoatual = date.today()

# variavel global
global nome

print("Bem-vind@ à calculadora de idade")

# criando funcao para ler e mostrar nome
def nome():
	nome = input("Qual é o seu nome: ")
	print('Bem-vindo '+nome+'!')
	
	#retornando variavel global 
	return nome

# criando funcao para ler e imprimir a idade
def idade():
	##### Calculando ano
	# Pergutando em que ano o usuario nasceu
	ano_informado = int(input("Em que ano voce nasceu? "))

	# Subtrair o ano atual do ano informado
	idade_ano = anoatual.year - ano_informado

	##### Calculando meses
	mes_informado = int(input("Em que mes voce nasceu? "))

	# subtrai o mes atual do ano informado
	idade_mes = anoatual.month - mes_informado

	##### Calculando dias
	dia_informado = int(input("Em que dia voce nasceu? "))

	# subtrai o mes atual do ano informado
	idade_dia = anoatual.day - dia_informado

	# mes
	if idade_mes < 0:
		idade_ano = idade_ano - 1

		idade_mes = abs(idade_mes)	

	print("Voce tem", idade_ano, "ano(s) de idade", idade_mes, "mes(es) e" , idade_dia, "dia(s).")

# chamando funcao
idade()

#################################################

# RODAPE
#################################################
#
#################################################