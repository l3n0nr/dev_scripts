from selenium import webdriver
from selenium.webdriver.common.keys import Keys

browser = webdriver.Firefox()
browser.get('http://facebook.com')

txtEmail = browser.find_element_by_id('email')
txtEmail.send_keys('email')

txtSenha = browser.find_element_by_id('pass')
txtSenha.send_keys('senha')

btnEntrar = browser.find_element_by_id('u_0_m')
btnEntrar.click()

elem = browser.find_elements_by_class_name('_58al')
elem[0].send_keys('Gustavo Garcia')
elem[0].send_keys(Keys.RETURN)

txtChat = browser.find_elements_by_class_name('_5rpu')
txtChat[0].click()
for x in range(1,50):
	txtChat[0].send_keys('Não desista')
	txtChat[0].send_keys(Keys.RETURN)

browser.close()
