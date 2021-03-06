
--Bronze Layer
drop database if exists bronze cascade;
create database bronze;

CREATE EXTERNAL TABLE IF NOT EXISTS bronze.jogadores2014
(id string,Apelido string,ClubeID string,PosicaoID string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar"="\"",
"escapeChar"="\\"
)
stored as textfile
LOCATION '/datalake/jogadores/2014'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS bronze.jogadores2015
(id string,Apelido string,ClubeID string,PosicaoID string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar"="\"",
"escapeChar"="\\"
)
stored as textfile
LOCATION '/datalake/jogadores/2015'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS bronze.jogadores2016
(id string,Apelido string,ClubeID string,PosicaoID string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar"="\"",
"escapeChar"="\\"
)
stored as textfile
LOCATION '/datalake/jogadores/2016'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS bronze.jogadores2017
(id string,Apelido string,ClubeID string,PosicaoID string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar"="\"",
"escapeChar"="\\"
)
stored as textfile
LOCATION '/datalake/jogadores/2017'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS bronze.jogadores2018
(id string,Apelido string,ClubeID string,PosicaoID string, Foto string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar"="\"",
"escapeChar"="\\"
)
stored as textfile
LOCATION '/datalake/jogadores/2018'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS bronze.partidas2014
(ID string, game string,	roundCol string, dateCol string,	
home_team string,	score string,	away_team string,	arena string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar"="\"",
"escapeChar"="\\"
)
stored as textfile
LOCATION '/datalake/partidas/2014'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS bronze.partidas2015
(ID string, game string,	roundCol string, dateCol string,	
home_team string,	score string,	away_team string,	arena string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar"="\"",
"escapeChar"="\\"
)
stored as textfile
LOCATION '/datalake/partidas/2015'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS bronze.partidas2016
(ID string, game string,	roundCol string, dateCol string,	
home_team string,	score string,	away_team string,	arena string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar"="\"",
"escapeChar"="\\"
)
stored as textfile
LOCATION '/datalake/partidas/2016'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS bronze.partidas2017
(ID string, game string,	roundCol string, dateCol string,	
home_team string,	score string,	away_team string,	arena string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar"="\"",
"escapeChar"="\\"
)
stored as textfile
LOCATION '/datalake/partidas/2017'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS bronze.partidas2018
(game string,	roundCol string, dateCol string,	
home_team string,	score string,	away_team string,	arena string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar"="\"",
"escapeChar"="\\"
)
stored as textfile
LOCATION '/datalake/partidas/2018'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS bronze.partidas2019
(dateCol string, home_team string,	away_team string, home_score string,	
away_score string,	roundCol string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar"="\"",
"escapeChar"="\\"
)
stored as textfile
LOCATION '/datalake/partidas/2019'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS bronze.partidas2020
(dateCol string, home_team string,	away_team string, home_score string,	
away_score string,	roundCol string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar"="\"",
"escapeChar"="\\"
)
stored as textfile
LOCATION '/datalake/partidas/2020'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS bronze.partidasID2014
(ID string,	Rodada string,	Casa string,	Visitante string,	
PlacarCasa string,	PlacarVisitante string,	Resultado string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar"="\"",
"escapeChar"="\\"
)
stored as textfile
LOCATION '/datalake/partidas_ids/2014'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS bronze.partidasID2015
(ID string,	Rodada string,	Casa string,	Visitante string,	
PlacarCasa string,	PlacarVisitante string,	Resultado string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar"="\"",
"escapeChar"="\\"
)
stored as textfile
LOCATION '/datalake/partidas_ids/2015'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS bronze.partidasID2016
(ID string,	Rodada string,	Casa string,	Visitante string,	
PlacarCasa string,	PlacarVisitante string,	Resultado string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar"="\"",
"escapeChar"="\\"
)
stored as textfile
LOCATION '/datalake/partidas_ids/2016'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS bronze.scouts_raw2014
(Atleta string, 	Rodada string, 	Clube string, 	Participou string, 	Posicao string, 	Jogos string, 	
Pontos string, 	PontosMedia string, 	Preco string, 	PrecoVariacao string, 	Partida string, 	
Mando string, 	Titular string, 	Substituido string, 	TempoJogado string, 	Nota string, 	
FS string, 	PE string, 	A string, 	FT string, 	FD string, 	FF string, 	G string, 	I string, 	
PP string, 	RB string, 	FC string, 	GC string, 	CA string, 	CV string, 	SG string, 	DD string, 	
DP string, 	GS string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar"="\"",
"escapeChar"="\\"
)
stored as textfile
LOCATION '/datalake/scouts_raw/2014'
tblproperties ("skip.header.line.count"="1");


CREATE EXTERNAL TABLE IF NOT EXISTS bronze.scouts_raw2015
(Rodada string,	ClubeID string,	AtletaID string,	Jogos string,	Pontos string,	PontosMedia string,	
Preco string,	PrecoVariacao string,	FS string,	PE string,	A string,	FT string,	FD string,	
FF string,	G string,	I string,	PP string,	RB string,	FC string,	GC string,	CA string,	
CV string,	SG string,	DD string,	DP string,	GS string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar"="\"",
"escapeChar"="\\"
)
stored as textfile
LOCATION '/datalake/scouts_raw/2015'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS bronze.scouts_raw2016
(Rodada string,	ClubeID string,	AtletaID string,	Participou string,	
Pontos string,	PontosMedia string,	Preco string,	PrecoVariacao string,	
FS string,	PE string,	A string,	FT string,	FD string,	FF string,	G string,	
I string,	PP string,	RB string,	FC string,	GC string,	CA string,	CV string,	
SG string,	DD string,	DP string,	GS string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar"="\"",
"escapeChar"="\\"
)
stored as textfile
LOCATION '/datalake/scouts_raw/2016'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS bronze.scouts_raw2017
(ID string,	A string,	CA string,	CV string,	DD string,	DP string,	FC string,	
FD string,	FF string,	FS string,	FT string,	G string,	GC string,	GS string,	
I string,	PE string,	PP string,	RB string,	SG string,	scout string,	apelido string,	
atleta_id string,	clubeidfullname string,	clube_id string,	foto string,	
jogos_num string,	media_num string,	nome string,	pontos_num string,	
posicao_id string,	preco_num string,	Rodada string,	status_id string,	
variacao_num string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar"="\"",
"escapeChar"="\\"
)
stored as textfile
LOCATION '/datalake/scouts_raw/2017'
tblproperties ("skip.header.line.count"="1");


CREATE EXTERNAL TABLE IF NOT EXISTS bronze.rodadas2018
(ID string,	nome string,	slug string,	apelido string,	foto string,	
atleta_id string,	rodada_id string,	clube_id string,	posicao_id string,	
status_id string,	pontos_num string,	preco_num string,	variacao_num string,	
media_num string,	clubeIdname string,	FC string,	FD string,	FF string,	
FS string,	G string,	I string,	RB string,	CA string,	PE string,	A string,	
SG string,	DD string,	FT string,	GS string,	CV string,	GC string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar"="\"",
"escapeChar"="\\"
)
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
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar"="\"",
"escapeChar"="\\"
)
stored as textfile
LOCATION '/datalake/2019'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS bronze.rodadas2020
(ID string, 	nome string, 	slug string, 	apelido string, 	foto string, 	atleta_id string, 	rodada_id string, 	clube_id string, 	posicao_id string, 	status_id string, 	pontos_num string, 	preco_num string, 	variacao_num string, 	media_num string, 	jogos_num string, 	clubeidfullname string, 	FF string, 	FS string, 	G string, 	PI string, 	CA string, 	FC string, 	DS string, 	FT string, 	DD string, 	GS string, 	FD string, 	GC string, 	SG string, 	A string, 	I string, 	CV string, 	PP string )
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar"="\"",
"escapeChar"="\\"
)
stored as textfile
LOCATION '/datalake/2020'
tblproperties ("skip.header.line.count"="1");


CREATE EXTERNAL TABLE IF NOT EXISTS bronze.medias_jogadores2018
(player_slug string,	player_id string,	player_nickname string,	player_team string,	player_position string,	price_cartoletas string,	score_mean string,	score_no_cleansheets_mean string,	diff_home_away_s string,	n_games string,	score_mean_home string,	score_mean_away string,	shots_x_mean string,	fouls_mean string,	RB_mean string,	PE_mean string,	A_mean string,	I_mean string,	FS_mean string,	FF_mean string,	G_mean string,	DD_mean string,	DP_mean string,	status string,	price_diff string,	last_points string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar"="\"",
"escapeChar"="\\"
)
stored as textfile
LOCATION '/datalake/medias_jogadores/2018'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS bronze.medias_jogadores2019
(player_slug string,	player_id string,	player_nickname string,	player_team string,	player_position string,	price_cartoletas string,	score_mean string,	score_no_cleansheets_mean string,	diff_home_away_s string,	n_games string,	score_mean_home string,	score_mean_away string,	shots_x_mean string,	fouls_mean string,	RB_mean string,	PE_mean string,	A_mean string,	I_mean string,	FS_mean string,	FF_mean string,	G_mean string,	DD_mean string,	DP_mean string,	status string,	price_diff string,	last_points string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar"="\"",
"escapeChar"="\\"
)
stored as textfile
LOCATION '/datalake/medias_jogadores/2019'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS bronze.medias_jogadores2020
(player_slug string,	player_id string,	player_nickname string,	player_team string,	player_position string,	price_cartoletas string,	score_mean string,	score_no_cleansheets_mean string,	diff_home_away_s string,	n_games string,	score_mean_home string,	score_mean_away string,	shots_x_mean string,	fouls_mean string,	RB_mean string,	PE_mean string,	A_mean string,	I_mean string,	FS_mean string,	FF_mean string,	G_mean string,	DD_mean string,	DP_mean string,	status string,	price_diff string,	last_points string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar"="\"",
"escapeChar"="\\"
)
stored as textfile
LOCATION '/datalake/medias_jogadores/2020'
tblproperties ("skip.header.line.count"="1");

--Times

CREATE EXTERNAL TABLE IF NOT EXISTS bronze.clubes_2014_2017
(id string,	nome string,	abreviacao string,	slug string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar"="\"",
"escapeChar"="\\"
)
stored as textfile
LOCATION '/datalake/times'
tblproperties ("skip.header.line.count"="1");