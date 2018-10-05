# CABEÇALHO
# Referencia: <https://youtu.be/vZtsWaAo7aE>
# Titulo: dialog - AULA 7

# CORPO DO SCRIPT
diretorio=$(
	dialog --stdout --dselect $HOME 0 0)

echo "$diretorio"

arquivo=$(
	dialog --stdout --fselect $HOME 0 0)


echo "$arquivo"

# RODAPE
