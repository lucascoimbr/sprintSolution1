--Silver Layer
create database if not exists silver;

create table if not exists silver.jogadores_2014_2018 as
select cast(ID as bigint), apelido, 
clubeid, posicaoid,
cast('2014' as int) as ano from `bronze`.`jogadores2014`
UNION ALL
select cast(ID as bigint), apelido, 
clubeid, posicaoid,
cast('2015' as int) as ano  from `bronze`.`jogadores2015`
UNION ALL
select cast(ID as bigint), apelido, 
clubeid, posicaoid,
cast('2016' as int) as ano  from `bronze`.`jogadores2016`
UNION ALL
select cast(ID as bigint), apelido, 
clubeid, posicaoid,
cast('2017' as int) as ano  from `bronze`.`jogadores2017`
UNION ALL
select cast(ID as bigint), apelido, 
clubeid, posicaoid,
cast('2018' as int) as ano  from `bronze`.`jogadores2018`;

create table if not exists silver.medias_jogadores_2018_2020 as
select *,
cast('2018' as int) as ano from `bronze`.`medias_jogadores2018`
UNION ALL
select *,
cast('2019' as int) as ano  from `bronze`.`medias_jogadores2019`
UNION ALL
select *,
cast('2020' as int) as ano  from `bronze`.`medias_jogadores2020`;

create table if not exists silver.partidas_2014_2020 as
select *,
cast('2014' as int) as ano from `bronze`.`partidas2014`
UNION ALL
select *,
cast('2015' as int) as ano  from `bronze`.`partidas2015`
UNION ALL
select *,
cast('2016' as int) as ano  from `bronze`.`partidas2016`
UNION ALL
select *,
cast('2017' as int) as ano  from `bronze`.`partidas2017`
UNION ALL
select *,
cast('2019' as int) as ano  from `bronze`.`partidas2018`
UNION ALL
select *,
cast('2019' as int) as ano  from `bronze`.`partidas2019`
UNION ALL
select *,
cast('2020' as int) as ano  from `bronze`.`partidas2020`;


create table if not exists silver.scouts_raw2014_2017 as
select *,
cast('2014' as int) as ano from `bronze`.`scouts_raw2014`
UNION ALL
select *,
cast('2015' as int) as ano  from `bronze`.`scouts_raw2016`
UNION ALL
select *,
cast('2016' as int) as ano  from `bronze`.`scouts_raw2016`
UNION ALL
select *,
cast('2017' as int) as ano  from `bronze`.`scouts_raw2017`;

