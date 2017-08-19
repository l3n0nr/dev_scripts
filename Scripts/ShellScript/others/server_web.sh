#servidor web
                apt-get install php5 php5-mysql mysql-server -y

#banco de dados
                apt-get install phpmyadmin -y

#openssh
                clear
                echo "Instalando o OpenSSH"
                echo "----------------------------------------------------------------------"
                
                #instalando modo servidor
                apt install openssh-server -y

                #instalando modo cliente	
                apt install openssh-client -y