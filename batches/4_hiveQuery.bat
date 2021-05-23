@ECHO OFF 

::Apaga os bancos preexistentes
docker exec -it hive-server bash -c "hive -e 'drop database if exists bronze cascade;'"
docker exec -it hive-server bash -c "hive -e 'drop database if exists silver cascade;'"
docker exec -it hive-server bash -c "hive -e 'drop database if exists gold cascade;'"

docker exec -it hive-server bash -c "hive -f /opt/hive/1_bronze.hql"

::docker exec -it hive-server bash -c "hive -f /opt/hive/2_silver.hql"

::docker exec -it hive-server bash -c "hive -f /opt/hive/3_gold.hql"








