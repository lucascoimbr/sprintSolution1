--Gold Layer

--Numero de registros
DROP VIEW IF EXISTS gold.numRegistros;
CREATE VIEW IF NOT EXISTS gold.numRegistros AS 
select ano, count(datecol) as numRegistros 
from `gold`.`partidas`
GROUP BY ano;

--Equipes mandantes
DROP VIEW IF EXISTS gold.numEquipesMandantes;
CREATE VIEW IF NOT EXISTS gold.numEquipesMandantes AS 
select ano, count(distinct home_team) as numEquipes 
from `gold`.`partidas`;

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
FROM `gold`.`partidas`
) as df
GROUP BY ANO;