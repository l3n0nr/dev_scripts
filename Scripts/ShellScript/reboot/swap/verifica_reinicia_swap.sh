#/bin/bash

# Referencia: <https://www.vivaolinux.com.br/script/Verificar-eou-limpar-cache-de-memoria>
# Autor: <Pedro>

#-------------------------------------------------------------------------
# Cclean v1.1, feito para ser executado periodicamente de maneira simples
# e eficiente, bastando ser executado em background pelo root no init
# feito por px, contato por email dropx11@gmail.com
#-------------------------------------------------------------------------


#--------------------------Parametros do Cclean----------------------------------------
MEM_MIN=2097152 #quantidade de memória livre, em kb para iniciar a limpeza, padrão 2 gb
TIME=1800       #intervalo da verificação de memoria livre, em segundos, padrão 30 min
#--------------------------------------------------------------------------------------

GET_MEN() {
export MEM_LIVRE=$(awk '/^MemFree/ { print $2; }' /proc/meminfo)
 if [ $MEM_LIVRE -le $MEM_MIN ];then
CLEAN
 else sleep $TIME
GET_MEN
fi
}

CLEAN() {
sync && echo 3 > /proc/sys/vm/drop_caches;
sleep $TIME
GET_MEN
}

GET_MEN>
