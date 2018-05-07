#autor: github.com/JoaoOMC
#importando biblioteca para abrir as portas
import socket 

#criando variavel para receber o endereco
host = ''

#porta para conexao
port = 55222

#criando socket, para receber o tipo de conexao
sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

#utilizando variaveis
sock.bind((host, port))

#numero maximo de tentantivas
sock.listen(5)

#captura as informações da conexao
connection, addr = sock.accept()

#mostrando dados no formato de bytes com tamanho de 1024
print(connection.recv(1024).decode())

#fechando porta
connection.close()
