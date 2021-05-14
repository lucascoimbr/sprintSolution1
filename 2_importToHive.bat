cd D:\docker\sprintSolution1

::Cola o arquivo HQL container do Hive
docker cp allQueries.hql hive-server:/opt/hive

echo PRONTO!

docker exec -it hive-server bash