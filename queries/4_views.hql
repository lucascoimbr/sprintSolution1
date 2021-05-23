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
from `gold`.`partidas`