@ECHO OFF 

::Cria os diretórios no HDFS
echo "SCOUTS_RAW:"
docker exec -it datanode bash -c "hadoop fs -mkdir /datalake/scouts_raw/ /datalake/scouts_raw/2014 /datalake/scouts_raw/2015 /datalake/scouts_raw/2016 /datalake/scouts_raw/2017 ;" 

docker exec -it datanode bash -c "hadoop fs -put /home/data/2014/2014_scouts_raw.csv /datalake/scouts_raw/2014; hadoop fs -put /home/data/2015/2015_scouts_raw.csv /datalake/scouts_raw/2015; hadoop fs -put /home/data/2016/2016_scouts_raw.csv /datalake/scouts_raw/2016; hadoop fs -put /home/data/2017/2017_scouts_raw.csv /datalake/scouts_raw/2017;"