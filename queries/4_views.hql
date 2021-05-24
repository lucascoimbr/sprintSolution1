--Gold Layer

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
from `gold`.`partida`;

--Num. de vitórias para equipes mandantes, visitantes e empates
DROP VIEW IF EXISTS gold.vit_mandantes_visitantes;
CREATE VIEW IF NOT EXISTS gold.vit_mandantes_visitantes AS 
SELECT 
ano
,sum(mandanteGanhou) as Vit_Mandantes
,sum(visitanteGanhou) as Vit_Mandantes
,sum(empate) as empate
FROM
(
SELECT 
ano
, home_score
, away_score
, CASE WHEN home_score > away_score then 1 else 0 end mandanteGanhou
, CASE WHEN home_score > away_score then 1 else 0 end visitanteGanhou
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


