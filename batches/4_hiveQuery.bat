@ECHO OFF 

docker exec -it hive-server bash -c "hive -f /opt/hive/1_bronze.hql"

docker exec -it hive-server bash -c "hive -f /opt/hive/2_silver.hql"

docker exec -it hive-server bash -c "hive -f /opt/hive/3_gold.hql"

docker exec -it hive-server bash -c "hive -f /opt/hive/4_views.hql"








