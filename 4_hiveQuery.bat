@ECHO OFF 

::Cria o banco de dados bronze
docker exec -it hive-server bash -c "hive -e 'create database if not exists bronze;'"

::Cria o banco de dados silver
docker exec -it hive-server bash -c "hive -e 'create database if not exists silver;'"

::Tabela JOGADORES

docker exec -it hive-server bash -c "hive -f /opt/hive/allQueries.hql"

::Abre o Hive
::docker exec -it hive-server bash







