@ECHO OFF 

::Cria os diretórios no HDFS
echo "JOGADORES:"
docker exec -it datanode bash -c "hadoop fs -mkdir /datalake/jogadores /datalake/jogadores/2014 /datalake/jogadores/2015 /datalake/jogadores/2016 /datalake/jogadores/2017 /datalake/jogadores/2018; "

docker exec -it datanode bash -c "hadoop fs -put /home/data/2014/2014_jogadores.csv /datalake/jogadores/2014; hadoop fs -put /home/data/2015/2015_jogadores.csv /datalake/jogadores/2015; hadoop fs -put /home/data/2016/2016_jogadores.csv /datalake/jogadores/2016; hadoop fs -put /home/data/2017/2017_jogadores.csv /datalake/jogadores/2017; hadoop fs -put /home/data/2018/2018_jogadores.csv /datalake/jogadores/2018;" 
