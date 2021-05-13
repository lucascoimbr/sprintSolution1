create database if not exists raw;

CREATE EXTERNAL TABLE IF NOT EXISTS raw.jogadores
(id string,Apelido string,ClubeID string,PosicaoID string)
row format delimited fields terminated by ','
stored as textfile
LOCATION '/datalake/jogadores/'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS raw.partidas
(ID string, game string,	round string, dateCol string,	
home_team string,	score string,	away_team string,	arena string)
row format delimited fields terminated by ','
stored as textfile
LOCATION '/datalake/partidas'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS raw.partidasID
(ID string,	Rodada string,	Casa string,	Visitante string,	
PlacarCasa string,	PlacarVisitante string,	Resultado string)
row format delimited fields terminated by ','
stored as textfile
LOCATION '/datalake/partidas_ids'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS raw.scouts_raw
(Rodada string,	ClubeID string,	AtletaID string,	Participou string,	
Pontos string,	PontosMedia string,	Preco string,	PrecoVariacao string,	
FS string,	PE string,	A string,	FT string,	FD string,	FF string,	G string,	
I string,	PP string,	RB string,	FC string,	GC string,	CA string,	CV string,	
SG string,	DD string,	DP string,	GS string)
row format delimited fields terminated by ','
stored as textfile
LOCATION '/datalake/scouts_raw'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS raw.rodadas2018
(ID string,	nome string,	slug string,	apelido string,	foto string,	
atleta_id string,	rodada_id string,	clube_id string,	posicao_id string,	
status_id string,	pontos_num string,	preco_num string,	variacao_num string,	
media_num string,	clubeIdname string,	FC string,	FD string,	FF string,	
FS string,	G string,	I string,	RB string,	CA string,	PE string,	A string,	
SG string,	DD string,	FT string,	GS string,	CV string,	GC string)
row format delimited fields terminated by ','
stored as textfile
LOCATION '/datalake/2018'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS raw.rodadas2019
(ID string,	nome string,	slug string,	apelido string,	foto string,	
atleta_id string,	rodada_id string,	clube_id string,	posicao_id string,	
status_id string,	pontos_num string,	preco_num string,	variacao_num string,	
media_num string,	clubeIdname string,	FC string,	FD string,	FF string,	
FS string,	G string,	I string,	RB string,	CA string,	PE string,	A string,	
SG string,	DD string,	FT string,	GS string,	CV string,	GC string)
row format delimited fields terminated by ','
stored as textfile
LOCATION '/datalake/2019'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS raw.rodadas2020
(ID string,	nome string,	slug string,	apelido string,	foto string,	
atleta_id string,	rodada_id string,	clube_id string,	posicao_id string,	
status_id string,	pontos_num string,	preco_num string,	variacao_num string,	
media_num string,	clubeIdname string,	FC string,	FD string,	FF string,	
FS string,	G string,	I string,	RB string,	CA string,	PE string,	A string,	
SG string,	DD string,	FT string,	GS string,	CV string,	GC string)
row format delimited fields terminated by ','
stored as textfile
LOCATION '/datalake/2020'
tblproperties ("skip.header.line.count"="1");


