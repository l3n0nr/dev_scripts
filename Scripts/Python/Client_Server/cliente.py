#!/usr/bin/env python3
import socket

host = '192.168.0.100'
port = 55222
skt = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

skt.connect((host,port))

skt.send("Olá, world!".encode())

skt.close()