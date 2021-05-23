@ECHO OFF 

::Cria o banco de dados bronze
docker exec -it hive-server bash -c "hive -e 'create database if not exists bronze;'"

::Cria o banco de dados silver
docker exec -it hive-server bash -c "hive -e 'create database if not exists silver;'"

::Cria o banco de dados Gold
docker exec -it hive-server bash -c "hive -e 'create database if not exists gold;'"

docker exec -it hive-server bash -c "hive -f /opt/hive/1_bronze.hql"

::docker exec -it hive-server bash -c "hive -f /opt/hive/2_silver.hql"

::docker exec -it hive-server bash -c "hive -f /opt/hive/3_gold.hql"








