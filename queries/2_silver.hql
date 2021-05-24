--Silver Layer
drop database if exists silver cascade;
create database silver;

--TABELAS DE PARTIDAS
create table if not exists silver.partidas2014 as
select 
 cast(to_date(from_unixtime(unix_timestamp(datecol, 'dd/MM/yyyy'))) as date) as datecol
, cast(roundcol as int)
, cast(game as int)
, home_team, away_team
, cast(trim(split(score, 'x')[0]) as int) as home_score
, cast(trim(split(score, 'x')[1]) as int) as away_score
, arena 
, cast('2014' as int) as ano from `bronze`.`partidas2014`;

create table if not exists silver.partidas2015 as
select 
 cast(to_date(from_unixtime(unix_timestamp(datecol, 'dd/MM/yyyy'))) as date) as datecol
, cast(roundcol as int)
, cast(game as int)
, home_team, away_team
, cast(trim(split(score, 'x')[0]) as int) as home_score
, cast(trim(split(score, 'x')[1]) as int) as away_score
, arena 
, cast('2015' as int) as ano  from `bronze`.`partidas2015`;

create table if not exists silver.partidas2016 as
select 
 cast(to_date(from_unixtime(unix_timestamp(datecol, 'dd/MM/yyyy'))) as date) as datecol
, cast(roundcol as int)
, cast(game as int)
, home_team, away_team
, cast(trim(split(score, 'x')[0]) as int) as home_score
, cast(trim(split(score, 'x')[1]) as int) as away_score
, arena 
, cast('2016' as int) as ano  from `bronze`.`partidas2016`;

create table if not exists silver.partidas2017 as
select 
 cast(to_date(from_unixtime(unix_timestamp(datecol, 'dd/MM/yyyy'))) as date) as datecol
, cast(roundcol as int)
, cast(game as int)
, home_team, away_team
, cast(trim(split(score, 'x')[0]) as int) as home_score
, cast(trim(split(score, 'x')[1]) as int) as away_score
, arena 
, cast('2017' as int) as ano  from `bronze`.`partidas2017`;

create table if not exists silver.partidas2018 as
select 
 cast(to_date(from_unixtime(unix_timestamp(datecol, 'dd/MM/yyyy'))) as date) as datecol
, cast(roundcol as int)
, cast(game as int)
, home_team, away_team
, cast(trim(split(score, 'x')[0]) as int) as home_score
, cast(trim(split(score, 'x')[1]) as int) as away_score
, arena 
, cast('2018' as int) as ano  from `bronze`.`partidas2018`;

create table if not exists silver.partidas2019 as
select 
 cast(to_date(from_unixtime(unix_timestamp(datecol, 'yyyy-MM-dd'))) as date) as datecol
, cast(roundcol as int)
, cast(1 as int) as game
, home_team, away_team
, cast(trim(home_score) as int) as home_score
, cast(trim(away_score) as int) as away_score
, "-" as arena 
, cast('2019' as int) as ano  from `bronze`.`partidas2019`;

create table if not exists silver.partidas2020 as
select 
 cast(to_date(from_unixtime(unix_timestamp(datecol, 'yyyy-MM-dd'))) as date) as datecol
, cast(roundcol as int)
, cast(1 as int) as game
, home_team, away_team
, cast(trim(home_score) as int) as home_score
, cast(trim(away_score) as int) as away_score
, "-" as arena 
, cast('2020' as int) as ano  from `bronze`.`partidas2020`;

--TABELA DE ID DOS CLUBES

CREATE TABLE IF NOT EXISTS silver.clube_2018 as
SELECT distinct *
FROM
(
SELECT clube_id, clubeidname as nome
from `bronze`.`rodadas2018`
) AS df;

create table if not exists silver.clube_id_2019_2020 as
SELECT 
distinct(clube_id), clube_Name
from
(select 
distinct(clube_id), clubeidname as clube_Name 
from `bronze`.`rodadas2019`
UNION ALL
select 
distinct(clube_id), clubeidfullname as clube_Name 
from `bronze`.`rodadas2020`
where clube_id <> clubeidfullname
) AS df;

--TABELA DE SCOUTS 2014-217
create table if not exists silver.scouts_raw2014_2017 as
select 
cast(atleta as int) as atletaid, cast(rodada as int) as rodada
, cast(pontos as float) as pontos
, cast('2014' as int) as ano from `bronze`.`scouts_raw2014`
UNION ALL
SELECT
cast(atletaid as int) as atletaid, cast(rodada as int) as rodada
, cast(pontos as float) as pontos
, cast('2015' as int) as ano  from `bronze`.`scouts_raw2015`
UNION ALL
select 
cast(atletaid as int) as atletaid, cast(rodada as int) as rodada
, cast(pontos as float) as pontos
, cast('2016' as int) as ano  from `bronze`.`scouts_raw2016`
UNION ALL
select 
cast(atleta_id as int) as atletaid, cast(rodada as int) as rodada
, cast(pontos_num as float) as pontos
, cast('2017' as int) as ano  from `bronze`.`scouts_raw2017`;

--TABELA DE RODADAS 2018-2020
create table if not exists silver.scouts_2018_2020 as
select 
cast(atleta_id as int) as atletaid
, cast(rodada_id as int) as rodada
, cast(pontos_num as float) as pontos
, cast('2018' as int) as ano
from `bronze`.`rodadas2018`
UNION ALL
select 
cast(atleta_id as int) as atletaid
, cast(rodada_id as int) as rodada
, cast(pontos_num as float) as pontos
, cast('2019' as int) as ano
from `bronze`.`rodadas2019`
UNION ALL
select 
cast(atleta_id as int) as atletaid
, cast(rodada_id as int) as rodada
, cast(pontos_num as float) as pontos
, cast('2020' as int) as ano
from `bronze`.`rodadas2020`;


