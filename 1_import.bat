@ECHO OFF 

::Vai para o diretório onde foi criado o docker
cd D:\docker

::Importa os dados do github do cartola
git clone https://github.com/henriquepgomide/caRtola

::Cola os dados do container do HDFS
docker cp caRtola/data/ datanode:/home/

::Abre o HDFS
docker exec -it datanode bash






