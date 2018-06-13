# Referencia: <https://youtu.be/PICvhVGj_TI>

# enconding: utf-8
import simplemail

def send(to,subject,message=""):
	e=simplemail.Email(
		smtp_server='smtp.gmail.com:587',
		smtp_user='recebendoatualizacoes@gmail.com',
		smtp_password='*',
		use_tls=True,
		from_address='recebendoautalizacoes@gmail.com',
		to_address=to,
		subject=subject,
		message=message).send()

send('lenonrmsouza@gmail.com', 'Teste de mensagem')
