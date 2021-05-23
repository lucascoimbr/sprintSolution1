@ECHO OFF 

::Cria os diretórios no HDFS
echo "MEDIAS_JOGADORES:"
docker exec -it datanode bash -c "hadoop fs -mkdir /datalake/medias_jogadores/ /datalake/medias_jogadores/2018 /datalake/medias_jogadores/2019 /datalake/medias_jogadores/2020" 

docker exec -it datanode bash -c "hadoop fs -put /home/data/2018/2018-medias-jogadores.csv /datalake/medias_jogadores/2018; hadoop fs -put /home/data/2019/2019-medias-jogadores.csv /datalake/medias_jogadores/2019; hadoop fs -put /home/data/2020/2020-medias-jogadores.csv /datalake/medias_jogadores/2020;"
