--
-- code pour la création des tables
--








--
-- code pour la création des vues
--



CREATE VIEW allCuir as
SELECT "montre".*
FROM "matériaux","montre"
WHERE "matériaux".id_matériaux = "montre".id_matériaux
AND "matériaux".libelle = 'Cuir';

CREATE VIEW allMontre as
SELECT *
FROM "montre"

--
-- code pour la création des policies
--