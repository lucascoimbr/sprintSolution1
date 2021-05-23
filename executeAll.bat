@ECHO OFF 

cd D:\docker\sprintSolution1\batches

::Executa todos os batches de uma única vez
echo Importacao do caRtola
call 1_import.bat

cd D:\docker\sprintSolution1\batches

echo Importacao para o Hive
call 2_importToHive.bat

cd D:\docker\sprintSolution1\batches

echo partidas
call 3_1_partidas.bat

cd D:\docker\sprintSolution1\batches

echo jogadores
call 3_2_jogadores.bat

cd D:\docker\sprintSolution1\batches

echo partidasID
call 3_3_partidasID.bat

cd D:\docker\sprintSolution1\batches

echo scouts_raw 
call 3_4_scouts_raw.bat

cd D:\docker\sprintSolution1\batches

echo rodadas
call 3_5_rodadas.bat

cd D:\docker\sprintSolution1\batches

echo medias jogadores
call 3_6_medias_jogadores.bat

cd D:\docker\sprintSolution1\batches

echo queries
call 4_hiveQuery.bat

docker exec -it datanode bash
echo FINALIZADO!
