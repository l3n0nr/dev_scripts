#!/usr/bin/env python
#
###############################################
# AUTOR: lenonr
#
# VERSAO: 0.10
#
# DATA DE CRIACAO: 23/07/18
# ULTIMA MODIFICACAO: 23/07/18
#
# DESCRICAO: 
#	Script para mostrar o tempo dos status principais do foguete,
#	como MECO, Separation, SECO, Deploy, etc.
#
#	Basta digitar os valores de cada status, para que o script 
#	mostre alguns segundos antes para o usuario.
#
###############################################
# BODY
import os, sys
os.system('cls' if os.name == 'nt' else 'clear')

## VARIABLES
###############################################
## SETAR TEMPO AUTOMATICAMENTE
# style launch
profile = [ariane, soyuz, falcon9_nolanding, falcon9_landing, falconh]

# status profile
ariane = [liftoff, maxq, sepation1, meco, sepation2, seco, separation3, deploy]
soyuz  = [liftoff, maxq, sepation1, meco, sepation2, seco, sepation2, deploy]
falcon9_landing = [liftoff, maxq, meco, sepation1, seco, reentry_burn, landing, deploy]
falcon9_nolanding  = [liftoff, maxq, meco, sepation1, seco, reentry_burn, landing, deploy]
falconh  = [liftoff, maxq, meco, sepation1, seco, reentry_burn, landing, deploy]

## FUNCION PROFILE MISSION
###############################################
def rocket_profile_mission():
	name_rocket = raw_input("The Vehicle for Launch: ")

## MAIN FUNCION
###############################################
def main():	
	pass

## CALL SCRIPT
main()