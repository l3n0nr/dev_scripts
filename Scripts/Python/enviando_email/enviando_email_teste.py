# -*- coding: utf-8 -*-
import smtplib

# Referencia: <https://omadson.wordpress.com/2016/04/22/enviando-emails-com-python/>
 
# Credenciais
remetente    = 'recebendoatualizacoes@gmail.com'
senha        = 'emailalternativo1'
 
# Informações da mensagem
destinatario = 'lenonrmsouza@gmail.com'
assunto      = 'Enviando email com python'
texto        = 'Esse email foi enviado usando python! :)'
 
# Preparando a mensagem
msg = '\r\n'.join([
  'From: %s' % remetente,
  'To: %s' % destinatario,
  'Subject: %s' % assunto,
  '',
  '%s' % texto
  ])
 
# Enviando o email
server = smtplib.SMTP('smtp.gmail.com:587')
server.starttls()
server.login(remetente,senha)
server.sendmail(remetente, destinatario, msg)
server.quit()
