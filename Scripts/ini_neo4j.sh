#Para o Neo4j ser executado, deve ser necessário que ele esteja localizado na pasta Downloads
clear
echo 'Iniciando o aplicativo NEO4J , espere alguns segundos...'
echo '----------------------------------'
cd /home/lenonr/Downloads/Arquivos/Neo4J/neo4j-community-2.3.0-M03/
./bin/neo4j console
echo '----------------------------------'
#sleep 2
#clear
#echo 'Iniciando o navegador , wait..'
#sleep 3
#firefox http://localhost:7474
### isso nao funciona, pois o processo de inicialização do neo4j fica rodando enquanto ele está aberto...
### dessa forma terei que estudar mais, para ver como que devo proceder para abrir o navegador automaticamento...
### depois que o servidor já esteja de pé.
