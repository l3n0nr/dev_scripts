#! /usr/bin/env python
#
# # Receitinha de bolo para criar senha simples e faceis de lembrar, XD.
#
# Criado em: 11/06/18
# Autor: lenonr
#
## HEAD
import os, sys

# limpando tela
os.system('cls' if os.name == 'nt' else 'clear')

## BODY
## funcoes
def main():
	nome_servico = raw_input("Digite o nome do servico que deseja criar a senha: ")
	palavra_chave = raw_input("Digite a palavra_chave: ")	
	qtd_caracteres = input("Digite a qtd_caracteres utilizar, partindo do nome do servico como base: ")
	print
	print "Opcoes de senhas"
	print "{" + nome_servico.upper()[0:qtd_caracteres] + palavra_chave + "*" + str(qtd_caracteres) + "}"
	print "[" + nome_servico.upper()[0:qtd_caracteres] + palavra_chave + "+" + str(qtd_caracteres) + "]"
	print "(" + nome_servico.upper()[0:qtd_caracteres] + palavra_chave + "#" + str(qtd_caracteres) + ")"
	print "|" + nome_servico.upper()[0:qtd_caracteres] + palavra_chave + "-" + str(qtd_caracteres) + "|"

	pass

## executando script
print("Gerador de senhas - v1")
print("======================")

# chamando funcao
main()

## FOOTER