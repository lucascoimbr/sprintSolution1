@ECHO OFF 

::Cria o banco de dados
::docker exec -it hive-server bash -c "hive -e 'create database if not exists raw;'"

::Tabela JOGADORES

docker exec -it hive-server bash -c "hive -f /opt/hive/allQueries.hql"

::Abre o Hive
::docker exec -it hive-server bash







