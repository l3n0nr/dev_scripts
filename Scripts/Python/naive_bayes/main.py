# -*- coding: utf-8 -*-
# #!/usr/bin env python
#
# # # # # # #
# REFERENCIA
# # # # # # # # # # # # # # # # # # # # # # #
#
# Implementando um Filtro Anti-SPAM usando o Naive Bayes
#	<https://youtu.be/Z8CzIOcGjuM>
#
# # # # # # # # # # # # # # # # # # # # # # #
# Press-install: Debian Stable
#	CONDAS: https://conda.io/miniconda.html
#	NLTK: pip install -U nltk
#	PANDAS: pip install pandas
#	SKLEARN: 
#		apt install python-sklearn
#		pip install -U scikit-learn | pip install scikit-learn --upgrade
## # # # # # # # # # # # # # # # # # # # # # #
#
import nltk	# natural language toolkit
from nltk.corpus import stopwords # preposicoes que nao agregam ao filtro
import string # cadeias de palavras
import pandas as pd # estatistica/analise de dados

# alta performance - aprendizado de maquina 
from sklearn.model_selection import train_test_split
from sklearn.pipeline import pipeline
from sklearn.feature_extraction.text import CountVectorizer
from sklearn.feature_extraction.text import TfidTransformer
from sklearn.naive_bayes import MultinomialNB
from sklearn.metrics import classification_report,confusion_matrix

# # criando pre-processamento do texto
def processa_texto(texto):
	#remove pontuação caractere a caractere
	nopunct = [char from char in texto if chat not in string.punctuation]

	#junta os caracteres em palavras novamente
	nopunct = ''.join(nopunct)

	cleanWords = [word from word in nopunct.split() if word.lower() not in stopwords.words('english')]

	return cleanWords

# executar na primeira vez do script - prepera o ambiente
nltk.dowload()

# configurando data-set
messages = pd.read_csv('spam.csv', encoding='latin-1')

# trabalhando com as colunas do arquivo
messages.drop(['Unnamed: 2', 'Unnamed: 3', 'Unnamed: 4'], axis=1, implace=True)

# renomeando colunas da tabela
messages = messages.rename(columns={'v1': 'tipo', 'v2': 'mensagem'})

messages['mensagem'].apply(processa_texto)

# testando se esta funcionando
#print(messages.to_string())

# imprimindo valores que nao sao spam
print(messages.groupby('tipo').describe().iloc[0])

# imprimindo valores que sao spam
print(messages.groupby('tipo').describe().iloc[1])

# agrupando mensagens
messages['length'] = messages['mensagem'].apply(len)

# formatando saidas
# messages.hist(column='length', by='tipo', bins=100, figsize=(15,6))