@ECHO OFF 

::Cria os diretórios no HDFS
echo "TIMES:"
docker exec -it datanode bash -c "hadoop fs -mkdir /datalake/times/;" 

docker exec -it datanode bash -c "hadoop fs -put /home/data/2014/2014_times.csv /datalake/times/; hadoop fs -put /home/data/2015/2015_times.csv /datalake/times/; hadoop fs -put /home/data/2016/2016_times.csv /datalake/times/; hadoop fs -put /home/data/2017/2017_times.csv /datalake/times/;"
