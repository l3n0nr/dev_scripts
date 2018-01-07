comando=$(ps aux | grep megasync | grep pts/7)

# echo "$comando"

if [[ ! -e $comando ]]; then
	echo "Nao existe"
else
	echo "existe"
fi

#dropbox start 
#megasync 
# dropbox stop