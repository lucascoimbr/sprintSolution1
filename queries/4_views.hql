--Views

--Numero de registros
DROP VIEW IF EXISTS gold.numRegistros;
CREATE VIEW IF NOT EXISTS gold.numRegistros AS 
select ano, count(datecol) as numRegistros 
from `gold`.`partida`
GROUP BY ano;

--Equipes mandantes
DROP VIEW IF EXISTS gold.numEquipesMandantes;
CREATE VIEW IF NOT EXISTS gold.numEquipesMandantes AS 
select ano, count(distinct home_team) as numEquipes 
from `gold`.`partida`
GROUP BY ano;

--Num. de vitórias para equipes mandantes, visitantes e empates
DROP VIEW IF EXISTS gold.vit_mandantes_visitantes;
CREATE VIEW IF NOT EXISTS gold.vit_mandantes_visitantes AS 
SELECT 
ano
,sum(mandanteGanhou) as Vit_Mandantes
,sum(visitanteGanhou) as Vit_Visitantes
,sum(empate) as empate
FROM
(
SELECT 
ano
, home_score
, away_score
, CASE WHEN home_score > away_score then 1 else 0 end mandanteGanhou
, CASE WHEN home_score < away_score then 1 else 0 end visitanteGanhou
, CASE WHEN home_score = away_score then 1 else 0 end empate
FROM `gold`.`partida`
) as df
GROUP BY ANO;

--Jogador com maiores SCOUTS

DROP VIEW IF EXISTS gold.jogador_scouts;
CREATE VIEW IF NOT EXISTS gold.jogador_scouts AS 
SELECT apelido as jogador, pontos, ano 
FROM
(SELECT grouped2.*, grouped1.atletaid 
FROM
(SELECT
max(pontos) as pontos, ano
FROM
(select 
atletaid, sum(pontos) as pontos, ano
from `gold`.`scout`
GROUP BY ano, atletaid
) as grouped1
GROUP BY ano
) as grouped2
LEFT JOIN
(select 
atletaid, sum(pontos) as pontos, ano
from `gold`.`scout`
GROUP BY ano, atletaid
) as grouped1
ON grouped1.pontos = grouped2.pontos) as grouped3
LEFT JOIN `gold`.`jogador`
ON atletaid = id;

--JOGADOR COM O MÁXIMO SCOUT

DROP VIEW IF EXISTS gold.maximoScout;
CREATE VIEW IF NOT EXISTS gold.maximoScout AS 
SELECT viewScouts.*
FROM 
(select 
max(pontos) as pontos
from `gold`.`jogador_scouts`) AS grouped1
LEFT JOIN
`gold`.`jogador_scouts` as viewScouts
ON grouped1.pontos = viewScouts.pontos;

--TIME IDEAL

DROP VIEW IF EXISTS gold.tempView1;
CREATE VIEW IF NOT EXISTS gold.tempView1 AS 
select 
atletaid, grouped1.ano, pontos, clubeid
FROM
(select 
atletaid, ano, sum(pontos) as pontos
from 
`gold`.`scout`
group By ano, atletaid) as grouped1
LEFT JOIN 
`gold`.`jogador_clube` as jogador_clube
ON 
grouped1.ano = jogador_clube.ano 
and grouped1.atletaid = jogador_clube.id
where clubeid is not null

DROP VIEW IF EXISTS gold.tempView2;
CREATE VIEW IF NOT EXISTS gold.tempView2 AS 
SELECT sum(pontos) as pontosclube, ano, nome as clube
FROM
(select *
FROM gold.tempView1 as tempView1
LEFT JOIN 
gold.clube 
ON clube.id = tempView1.clubeid) as grouped2
GROUP BY ano, nome;

DROP VIEW IF EXISTS gold.timeIdeal;
CREATE VIEW IF NOT EXISTS gold.timeIdeal AS 
SELECT * from 
(select * from gold.tempview2 where clube is not null) as grouped3
where pontosclube in (SELECT max(pontosclube) from gold.tempview2 group by ano);

DROP VIEW IF EXISTS gold.tempView1;
DROP VIEW IF EXISTS gold.tempView2;
