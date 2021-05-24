cd D:\docker\sprintSolution1\queries

echo COLANDO AS QUERIES NO CONTAINER DO HIVE
docker cp 1_bronze.hql hive-server:/opt/hive
docker cp 2_silver.hql hive-server:/opt/hive
docker cp 3_gold.hql hive-server:/opt/hive
docker cp 4_views.hql hive-server:/opt/hive

