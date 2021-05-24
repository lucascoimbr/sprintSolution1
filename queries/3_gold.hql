--Gold Layer
drop database if exists gold cascade;
create database gold;

--BASE DE PARTIDAS ---------------------
create table if not exists gold.partidas as
SELECT distinct *
FROM
(
SELECT * FROM
(SELECT 
*
from `silver`.`partidas2014`
UNION ALL
SELECT 
*
from `silver`.`partidas2015`
UNION ALL
SELECT 
*
from `silver`.`partidas2016`
UNION ALL
SELECT 
*
from `silver`.`partidas2017`
UNION ALL
SELECT 
*
from `silver`.`partidas2018`) as df_2014_2018
UNION ALL
SELECT * FROM
(SELECT 
datecol, roundcol, game
, home_team2 as home_team
, away_team2 as away_team
, home_score, away_score, arena, ano
FROM
(
SELECT 
* 
from `silver`.`partidas2019` as df
LEFT JOIN 
(SELECT 
clube_id, clube_name as home_team2
from `silver`.`clube_id`) as df_home
ON df.home_team = df_home.clube_id
LEFT JOIN 
(SELECT 
clube_id, clube_name as away_team2
from `silver`.`clube_id`) as df_away
ON df.away_team = df_away.clube_id
) as dfFinal
UNION ALL
SELECT 
datecol, roundcol, game
, home_team2 as home_team
, away_team2 as away_team
, home_score, away_score, arena, ano
FROM
(
SELECT 
* 
from `silver`.`partidas2020` as df
LEFT JOIN 
(SELECT 
clube_id, clube_name as home_team2
from `silver`.`clube_id`) as df_home
ON df.home_team = df_home.clube_id
LEFT JOIN 
(SELECT 
clube_id, clube_name as away_team2
from `silver`.`clube_id`) as df_away
ON df.away_team = df_away.clube_id
) as dfFinal2) df_2019_2020
) AS DFPARTIDAS;

--TABELA DE SCOUTS
create table if not exists gold.scouts as
select * from `silver`.`scouts_raw2014_2017`
UNION ALL
select * from `silver`.`scouts_2018_2020`;

--TABELA DE JOGADORES
create table if not exists gold.jogador as
SELECT distinct * from
(
select 
cast(id as int) as id
, apelido
from `bronze`.`jogadores2014`
UNION ALL
select
cast(id as int) as id
, apelido
from `bronze`.`jogadores2015`
UNION ALL
select
cast(id as int) as id
, apelido
from `bronze`.`jogadores2016`
UNION ALL
select 
cast(id as int) as id
, apelido
from `bronze`.`jogadores2017`
UNION ALL
select 
cast(id as int) as id
, apelido
from `bronze`.`jogadores2018`
UNION ALL
select 
cast(player_id as int) as id
, player_nickname as apelido
from `bronze`.`medias_jogadores2019`
UNION ALL
select 
cast(player_id as int) as id
, player_nickname as apelido
from `bronze`.`medias_jogadores2020`
) as df;

--JOGADOR-CLUBE
create table if not exists gold.jogador_clube as
SELECT distinct * from
(
select 
cast(id as int) as id
, cast(clubeid as int) as clubeid
, cast('2014' as int) as ano
from `bronze`.`jogadores2014`
UNION ALL
select
cast(id as int) as id
, cast(clubeid as int) as clubeid
, cast('2015' as int) as ano
from `bronze`.`jogadores2015`
UNION ALL
select
cast(id as int) as id
, cast(clubeid as int) as clubeid
, cast('2016' as int) as ano
from `bronze`.`jogadores2016`
UNION ALL
select 
cast(id as int) as id
, cast(clubeid as int) as clubeid
, cast('2017' as int) as ano
from `bronze`.`jogadores2017`
UNION ALL
select 
cast(id as int) as id
, cast(clubeid as int) as clubeid
, cast('2018' as int) as ano
from `bronze`.`jogadores2018`
UNION ALL
select 
cast(player_id as int) as id
, cast(player_team as int) as clubeid
, cast('2019' as int) as ano
from `bronze`.`medias_jogadores2019`
UNION ALL
select 
cast(player_id as int) as id
, cast(player_team as int) as clubeid
, cast('2020' as int) as ano
from `bronze`.`medias_jogadores2020`
) as df;


