@ECHO OFF 

::Cria os diretórios no HDFS
echo "RODADAS:"

docker exec -it datanode bash -c "hadoop fs -mkdir /datalake/agregados2018; hadoop fs -put /home/data/2018/2018_agregados.xlsx /datalake/agregados2018;" 


::Base de rodadas (2018-2020)
docker exec -it datanode bash -c "hadoop fs -put /home/data/2018 /datalake; hadoop fs -put /home/data/2019 /datalake; hadoop fs -put /home/data/2020 /datalake; hadoop fs -rm /datalake/2018/2018_agregados.xlsx; hadoop fs -rm /datalake/2018/2018_jogadores.csv; hadoop fs -rm /datalake/2018/2018_partidas.csv; hadoop fs -rm /datalake/2018/2018_tabelas.csv; hadoop fs -rm /datalake/2018/2018-medias-jogadores.csv; hadoop fs -rm /datalake/2019/2019_partidas.csv; hadoop fs -rm /datalake/2019/2019-medias-jogadores.csv; hadoop fs -rm /datalake/2019/inicio-0.csv; hadoop fs -rm /datalake/2020/2020_partidas.csv; hadoop fs -rm /datalake/2020/2020-medias-jogadores.csv; hadoop fs -mv /datalake/2019/team-features /datalake/team-features2019; hadoop fs -mv /datalake/2019/team-rankings  /datalake/team-rankigs2019; hadoop fs -mv /datalake/2020/team-features /datalake/team-features2020; hadoop fs -mv /datalake/2020/team-rankings /datalake/team-rankings2020; hadoop fs -rm -r /datalake/2020/team-features; hadoop fs -rm -r /datalake/2019/team-features; hadoop fs -rm -r /datalake/2020/team-rankings; hadoop fs -rm -r /datalake/2019/team-rankings;"