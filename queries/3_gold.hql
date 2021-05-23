--Gold Layer
drop database if exists gold cascade;
create database gold;

--BASE DE PARTIDAS ---------------------
create table if not exists gold.partidas as
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
