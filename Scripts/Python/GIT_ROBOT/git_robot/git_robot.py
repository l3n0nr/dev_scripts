# -*- coding: utf-8 -*-
#==========================================#
# GIT ROBOT
# Anderson Araujo (CoderN)
# Automatiza as tarefas basicas do git.
# 
#==========================================#

import os as cmd
import sys
from git_conf import *

def commit_and_push():
  message = raw_input("Entre com a mensagem de atualizacao: ")
  cmd.system("git add -A")
  cmd.system('git commit -m "{}"'.format(message))

  print 'Executando || git commit -m "{}"'.format(message)

  # Se der erro ele tenta novamente, caso para erro ao digitar a senha
  while True:
    retorno = cmd.system("git push -u origin {}".format(ORIGIN))

    print "Tentando executar || git push -u origin {}".format(ORIGIN)

    if retorno == 0:    
      print "\nUpdate completo!\n"
      break
    else: 
      print "\nOcorreu um erro\n"      

def git_init():
  cmd.system("git init")
  retorno = cmd.system("git remote add origin {}".format(REPOSITORY))    
  if retorno == 0:
    print "\nCriou com sucesso!\n"
  else: 
    print "\nOcorreu um erro ao tentar incializar o git, verifique se ele ja nao existe\n"

def help():
  print "\n"
  print "           \   /  "
  print "GIT ROBOT <(T_T)> "
  print "version: 1.0.0"
  print "Desenvolvido por: Anderson Araujo"
  print "\n\n"
  print "Digite o comando e de enter para iniciar..."
  print "-------------------------------------------"
  print "Para inicializar um novo repositorio: n\n"
  print "Para commit e push digite: c\n"    
  print "Para criar um novo repositorio ja enviando novas alteracoes: nc\n"
  print "Para chamar ajuda digite: <help>\n"
  print "Digite <quit> para sair.\n"

def menu(command):
  if command == "n" or command == "-n":
    git_init()

  elif command == "c" or command == "-c":
    commit_and_push()

  elif command == "nc" or command == "-nc":   
    git_init()
    commit_and_push()
  elif command == "help":
    help()
  else:
    print "\n!!Comando invalido!!\n"    

def main():   
  if len(sys.argv) >= 2:
    menu(sys.argv[1])
  else:
    help()
    while True:      
      command = raw_input("\nentre com o comando e pressione <enter>: ")
      if command == "quit":
        print "\n~ Bye ~\n"
        break

      else:
        menu(command) 



if __name__ == "__main__":
  main()