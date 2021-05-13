create database if not exists bronze;

CREATE EXTERNAL TABLE IF NOT EXISTS bronze.jogadores2014
(id string,Apelido string,ClubeID string,PosicaoID string)
row format delimited fields terminated by ','
stored as textfile
LOCATION '/datalake/jogadores/2014'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS bronze.jogadores2015
(id string,Apelido string,ClubeID string,PosicaoID string)
row format delimited fields terminated by ','
stored as textfile
LOCATION '/datalake/jogadores/2015'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS bronze.jogadores2016
(id string,Apelido string,ClubeID string,PosicaoID string)
row format delimited fields terminated by ','
stored as textfile
LOCATION '/datalake/jogadores/2016'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS bronze.jogadores2017
(id string,Apelido string,ClubeID string,PosicaoID string)
row format delimited fields terminated by ','
stored as textfile
LOCATION '/datalake/jogadores/2017'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS bronze.jogadores2018
(id string,Apelido string,ClubeID string,PosicaoID string)
row format delimited fields terminated by ','
stored as textfile
LOCATION '/datalake/jogadores/2018'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS bronze.partidas2014
(ID string, game string,	round string, dateCol string,	
home_team string,	score string,	away_team string,	arena string)
row format delimited fields terminated by ','
stored as textfile
LOCATION '/datalake/partidas/2014'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS bronze.partidas2015
(ID string, game string,	round string, dateCol string,	
home_team string,	score string,	away_team string,	arena string)
row format delimited fields terminated by ','
stored as textfile
LOCATION '/datalake/partidas/2015'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS bronze.partidas2016
(ID string, game string,	round string, dateCol string,	
home_team string,	score string,	away_team string,	arena string)
row format delimited fields terminated by ','
stored as textfile
LOCATION '/datalake/partidas/2016'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS bronze.partidas2017
(ID string, game string,	round string, dateCol string,	
home_team string,	score string,	away_team string,	arena string)
row format delimited fields terminated by ','
stored as textfile
LOCATION '/datalake/partidas/2017'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS bronze.partidas2018
(ID string, game string,	round string, dateCol string,	
home_team string,	score string,	away_team string,	arena string)
row format delimited fields terminated by ','
stored as textfile
LOCATION '/datalake/partidas/2018'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS bronze.partidas2019
(ID string, game string,	round string, dateCol string,	
home_team string,	score string,	away_team string,	arena string)
row format delimited fields terminated by ','
stored as textfile
LOCATION '/datalake/partidas/2019'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS bronze.partidas2020
(ID string, game string,	round string, dateCol string,	
home_team string,	score string,	away_team string,	arena string)
row format delimited fields terminated by ','
stored as textfile
LOCATION '/datalake/partidas/2020'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS bronze.partidasID2014
(ID string,	Rodada string,	Casa string,	Visitante string,	
PlacarCasa string,	PlacarVisitante string,	Resultado string)
row format delimited fields terminated by ','
stored as textfile
LOCATION '/datalake/partidas_ids/2014'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS bronze.partidasID2015
(ID string,	Rodada string,	Casa string,	Visitante string,	
PlacarCasa string,	PlacarVisitante string,	Resultado string)
row format delimited fields terminated by ','
stored as textfile
LOCATION '/datalake/partidas_ids/2015'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS bronze.partidasID2016
(ID string,	Rodada string,	Casa string,	Visitante string,	
PlacarCasa string,	PlacarVisitante string,	Resultado string)
row format delimited fields terminated by ','
stored as textfile
LOCATION '/datalake/partidas_ids/2016'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS bronze.scouts_bronze2014
(Rodada string,	ClubeID string,	AtletaID string,	Participou string,	
Pontos string,	PontosMedia string,	Preco string,	PrecoVariacao string,	
FS string,	PE string,	A string,	FT string,	FD string,	FF string,	G string,	
I string,	PP string,	RB string,	FC string,	GC string,	CA string,	CV string,	
SG string,	DD string,	DP string,	GS string)
row format delimited fields terminated by ','
stored as textfile
LOCATION '/datalake/scouts_bronze/2014'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS bronze.scouts_bronze2015
(Rodada string,	ClubeID string,	AtletaID string,	Participou string,	
Pontos string,	PontosMedia string,	Preco string,	PrecoVariacao string,	
FS string,	PE string,	A string,	FT string,	FD string,	FF string,	G string,	
I string,	PP string,	RB string,	FC string,	GC string,	CA string,	CV string,	
SG string,	DD string,	DP string,	GS string)
row format delimited fields terminated by ','
stored as textfile
LOCATION '/datalake/scouts_bronze/2015'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS bronze.scouts_bronze2016
(Rodada string,	ClubeID string,	AtletaID string,	Participou string,	
Pontos string,	PontosMedia string,	Preco string,	PrecoVariacao string,	
FS string,	PE string,	A string,	FT string,	FD string,	FF string,	G string,	
I string,	PP string,	RB string,	FC string,	GC string,	CA string,	CV string,	
SG string,	DD string,	DP string,	GS string)
row format delimited fields terminated by ','
stored as textfile
LOCATION '/datalake/scouts_bronze/2016'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS bronze.scouts_bronze2017
(Rodada string,	ClubeID string,	AtletaID string,	Participou string,	
Pontos string,	PontosMedia string,	Preco string,	PrecoVariacao string,	
FS string,	PE string,	A string,	FT string,	FD string,	FF string,	G string,	
I string,	PP string,	RB string,	FC string,	GC string,	CA string,	CV string,	
SG string,	DD string,	DP string,	GS string)
row format delimited fields terminated by ','
stored as textfile
LOCATION '/datalake/scouts_bronze/2017'
tblproperties ("skip.header.line.count"="1");


CREATE EXTERNAL TABLE IF NOT EXISTS bronze.rodadas2018
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

CREATE EXTERNAL TABLE IF NOT EXISTS bronze.rodadas2019
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

CREATE EXTERNAL TABLE IF NOT EXISTS bronze.rodadas2020
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


