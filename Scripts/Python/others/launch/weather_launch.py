#!/usr/bin/env python
#
###################################################################
# AUTOR: lenonr
#
# VERSAO: 0.10
#
# DATA DE CRIACAO: 23/07/18
# ULTIMA MODIFICACAO: 23/07/18
#
# DESCRICAO
#	Mostra o clima nos pontos principais de lancamento de foguetes
#
###################################################################
# BODY
import os, sys, webbrowser
os.system('cls' if os.name == 'nt' else 'clear')

## VARIABLES
###################################################################
# florida - EUA
# falcon9, delta
cape_canaveral="http://www.windy.com/28.451/-80.527?28.436,-80.523,13,m:esAadUW"

# vanderberg - EUA
# falcon9
vanderberg="http://www.windy.com/14.268/121.067?13.959,121.108,9,m:d2VajwV"

# kennedy space center - EUA
# falcon 9, delta
kennedy_space="http://www.windy.com/28.523/-80.680?28.267,-80.563,9,m:esHadUH"

# Kazakhstan - RUS
# soyuz
baikonour="http://www.windy.com/45.630/63.307?45.396,63.248,9,m:eVeahUF"

# guiana - FRA
# soyuz, ariane
guiana="http://www.windy.com/5.212/-52.774?5.133,-52.766,11,m:dNQaeHd"

# mahia - NEZ
# electron
mahia="http://www.windy.com/-39.224/177.872?-39.486,177.866,9,m:czMak5C"

# ROCKETS ARRAY
###################################################################
rockets=["falcon9", "falconh", "electron", "ariane5", "soyuz"]

# MAIN FUNCTION
###################################################################
def main():
	# show list
	print ("Options: " + str(rockets))

	# choice
	choice = raw_input("Rocket: ")	

	## VERIFICAR ARRAY, ao inves de if!
	# show options
	if choice == "falcon9":
		webbrowser.open_new(cape_canaveral)
	elif choice == "falconh":
		webbrowser.open_new(kennedy_space)
	elif choice == "electron":
		webbrowser.open_new(mahia)
	elif choice == "ariane5":
		webbrowser.open_new(guiana)
	elif choice == "soyuz":
		webbrowser.open_new(baikonour)
	else:
		print ("Outro")
	
	pass

# CALL FUNCTION
###################################################################
main()