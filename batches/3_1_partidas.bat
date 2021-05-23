@ECHO OFF 

::Cria os diretórios no HDFS
echo "Instalando as pastas necessárias"
echo "primeiro remove a pasta datalake, caso ja exista, depois instala todos os subdiretorios necessArios"
echo "PARTIDAS:"
docker exec -it datanode bash -c "hadoop fs -rm -r /datalake/; hadoop fs -mkdir /datalake/ /datalake/partidas /datalake/partidas/2014 /datalake/partidas/2015 /datalake/partidas/2016 /datalake/partidas/2017 /datalake/partidas/2018 /datalake/partidas/2019 /datalake/partidas/2020;"

docker exec -it datanode bash -c "hadoop fs -put /home/data/2014/2014_partidas.csv /datalake/partidas/2014; hadoop fs -put /home/data/2015/2015_partidas.csv /datalake/partidas/2015; hadoop fs -put /home/data/2016/2016_partidas.csv /datalake/partidas/2016; hadoop fs -put /home/data/2017/2017_partidas.csv /datalake/partidas/2017; hadoop fs -put /home/data/2018/2018_partidas.csv /datalake/partidas/2018; hadoop fs -put /home/data/2019/2019_partidas.csv /datalake/partidas/2019; hadoop fs -put /home/data/2020/2020_partidas.csv /datalake/partidas/2020; "