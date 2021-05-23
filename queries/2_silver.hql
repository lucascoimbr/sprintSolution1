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
, split(score, 'x')[0] as home_score
, split(score, 'x')[1] as away_score
, arena 
, cast('2014' as int) as ano from `bronze`.`partidas2014`;

create table if not exists silver.partidas2015 as
select 
 cast(to_date(from_unixtime(unix_timestamp(datecol, 'dd/MM/yyyy'))) as date) as datecol
, cast(roundcol as int)
, cast(game as int)
, home_team, away_team
, split(score, 'x')[0] as home_score
, split(score, 'x')[1] as away_score
, arena 
, cast('2015' as int) as ano  from `bronze`.`partidas2015`;

create table if not exists silver.partidas2016 as
select 
 cast(to_date(from_unixtime(unix_timestamp(datecol, 'dd/MM/yyyy'))) as date) as datecol
, cast(roundcol as int)
, cast(game as int)
, home_team, away_team
, split(score, 'x')[0] as home_score
, split(score, 'x')[1] as away_score
, arena 
, cast('2016' as int) as ano  from `bronze`.`partidas2016`;

create table if not exists silver.partidas2017 as
select 
 cast(to_date(from_unixtime(unix_timestamp(datecol, 'dd/MM/yyyy'))) as date) as datecol
, cast(roundcol as int)
, cast(game as int)
, home_team, away_team
, split(score, 'x')[0] as home_score
, split(score, 'x')[1] as away_score
, arena 
, cast('2017' as int) as ano  from `bronze`.`partidas2017`;

create table if not exists silver.partidas2018 as
select 
 cast(to_date(from_unixtime(unix_timestamp(datecol, 'dd/MM/yyyy'))) as date) as datecol
, cast(roundcol as int)
, cast(game as int)
, home_team, away_team
, split(score, 'x')[0] as home_score
, split(score, 'x')[1] as away_score
, arena 
, cast('2018' as int) as ano  from `bronze`.`partidas2018`;

create table if not exists silver.partidas2019 as
select 
 cast(to_date(from_unixtime(unix_timestamp(datecol, 'yyyy-MM-dd'))) as date) as datecol
, cast(roundcol as int)
, cast(1 as int) as game
, home_team, away_team
, home_score
, away_score
, "-" as arena 
, cast('2019' as int) as ano  from `bronze`.`partidas2019`;

create table if not exists silver.partidas2020 as
select 
 cast(to_date(from_unixtime(unix_timestamp(datecol, 'yyyy-MM-dd'))) as date) as datecol
, cast(roundcol as int)
, cast(1 as int) as game
, home_team, away_team
, home_score
, away_score
, "-" as arena 
, cast('2020' as int) as ano  from `bronze`.`partidas2020`;

--TABELA DE ID DOS CLUBES

create table if not exists silver.clube_id as
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

