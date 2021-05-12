@ECHO OFF 

::Cria os diretórios no HDFS
docker exec -it datanode bash -c "hadoop fs -mkdir /datalake; hadoop fs -mkdir /datalake/jogadores; hadoop fs -mkdir /datalake/partidas; hadoop fs -mkdir /datalake/partidas_ids; hadoop fs -mkdir /datalake/scouts_raw;"

::Base de jogadores
docker exec -it datanode bash -c "hadoop fs -put /home/data/2014/2014_jogadores.csv /datalake/jogadores; hadoop fs -put /home/data/2015/2015_jogadores.csv /datalake/jogadores; hadoop fs -put /home/data/2016/2016_jogadores.csv /datalake/jogadores; hadoop fs -put /home/data/2017/2017_jogadores.csv /datalake/jogadores; hadoop fs -put /home/data/2018/2018_jogadores.csv /datalake/jogadores;" 

::Base de partidas
docker exec -it datanode bash -c "hadoop fs -put /home/data/2014/2014_partidas.csv /datalake/partidas; hadoop fs -put /home/data/2015/2015_partidas.csv /datalake/partidas; hadoop fs -put /home/data/2016/2016_partidas.csv /datalake/partidas; hadoop fs -put /home/data/2017/2017_partidas.csv /datalake/partidas; hadoop fs -put /home/data/2018/2018_partidas.csv /datalake/partidas; hadoop fs -put /home/data/2019/2019_partidas.csv /datalake/partidas; hadoop fs -put /home/data/2020/2020_partidas.csv /datalake/partidas;"

::Base de partidas_ids
docker exec -it datanode bash -c "hadoop fs -put /home/data/2014/2014_partidas_ids.csv /datalake/partidas_ids; hadoop fs -put /home/data/2015/2015_partidas_ids.csv /datalake/partidas_ids; hadoop fs -put /home/data/2016/2016_partidas_ids.csv /datalake/partidas_ids;"

::Base de scouts
docker exec -it datanode bash -c "hadoop fs -put /home/data/2014/2014_scouts_raw.csv /datalake/scouts_raw; hadoop fs -put /home/data/2015/2015_scouts_raw.csv /datalake/scouts_raw; hadoop fs -put /home/data/2016/2016_scouts_raw.csv /datalake/scouts_raw; hadoop fs -put /home/data/2017/2017_scouts_raw.csv /datalake/scouts_raw;"

::Base de rodadas (2018-2020)
docker exec -it datanode bash -c "hadoop fs -put /home/data/2018 /datalake; hadoop fs -put /home/data/2019 /datalake; hadoop fs -put /home/data/2020 /datalake; hadoop fs -rm /datalake/2018/2018_agregados.xlsx; hadoop fs -rm /datalake/2018/2018_jogadores.csv; hadoop fs -rm /datalake/2018/2018_partidas.csv; hadoop fs -rm /datalake/2018/2018_tabelas.csv; hadoop fs -rm /datalake/2018/2018-medias-jogadores.csv; hadoop fs -rm /datalake/2019/2019_partidas.csv; hadoop fs -rm /datalake/2019/2019-medias-jogadores.csv; hadoop fs -rm /datalake/2019/inicio-0.csv; hadoop fs -rm /datalake/2020/2020_partidas.csv; hadoop fs -rm /datalake/2020/2020-medias-jogadores.csv; hadoop fs -mv /datalake/2019/team-features /datalake/team-features2019; hadoop fs -mv /datalake/2019/team-rankings  /datalake/team-rankigs2019; hadoop fs -mv /datalake/2020/team-features /datalake/team-features2020; hadoop fs -mv /datalake/2020/team-rankings /datalake/team-rankings2020;"


::Abre o HDFS
docker exec -it datanode bash





