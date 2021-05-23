@ECHO OFF 

::Cria os diretórios no HDFS
echo "PARTIDAS_ID:"
docker exec -it datanode bash -c "hadoop fs -mkdir /datalake/partidas_ids/ /datalake/partidas_ids/2014 /datalake/partidas_ids/2015 /datalake/partidas_ids/2016 "

docker exec -it datanode bash -c "hadoop fs -put /home/data/2014/2014_partidas_ids.csv /datalake/partidas_ids/2014; hadoop fs -put /home/data/2015/2015_partidas_ids.csv /datalake/partidas_ids/2015; hadoop fs -put /home/data/2016/2016_partidas_ids.csv /datalake/partidas_ids/2016;"