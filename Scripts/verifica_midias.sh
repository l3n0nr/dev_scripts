#filmes
	echo "Verificando Filmes..."
	ls /media/lenonr/lenonr-500GB/Arquivos/Filmes/ | grep - > /home/lenonr/MEGA/Outros/Lista/Filmes.txt
	clear

#seriados
	echo "Verificando Seriados"
	tree -f /media/lenonr/lenonr-500GB/Arquivos/Seriados/ > /home/lenonr/MEGA/Outros/Lista/Seriados.txt
	clear
	
#musicas
	echo "Verificando Musicas"
	tree -f /home/lenonr/Music/Musicas/ > /home/lenonr/MEGA/Outros/Lista/Musicas.txt	
	clear
	
#podcast's
	echo "Verificando Podcast's"
	tree -f /home/lenonr/Music/Podcast/ > /home/lenonr/MEGA/Outros/Lista/Podcast.txt
	clear
	
#shows
	echo "Verificando Shows"
	ls /home/lenonr/Videos/Shows/ | grep - > /home/lenonr/MEGA/Outros/Lista/Shows.txt
	clear
	
	echo "Backup realizado! Script será finalizado em 5 segundos"
	sleep 5