--
-- code pour la création des tables
--
CREATE TABLE Montre (
id uuid not null default uuid_generate_v4() ,
bracelet text,
boitier text,
ecran text,
id_materiaux uuid not null ,
Commander boolean not null default false,
utilisateur uuid references auth.users not null default uid(),
primary key (id) ,
FOREIGN KEY (id_materiaux) REFERENCES materiaux(id_materiaux)
);

CREATE TABLE materiaux (
id_materiaux uuid not null default uuid_generate_v4() ,
libelle text,
url text,





--
-- code pour la création des vues
--

CREATE VIEW allcuir as
SELECT "montre".*
FROM "matériaux","montre"
WHERE "matériaux".id_matériaux = "montre".id_matériaux
AND "matériaux".libelle = 'cuir';

CREATE VIEW allplastique as
SELECT "montre".*
FROM "matériaux","montre"
WHERE "matériaux".id_matériaux = "montre".id_matériaux
AND "matériaux".libelle = 'plastique';

CREATE VIEW alltissu as
SELECT "montre".*
FROM "matériaux","montre"
WHERE "matériaux".id_matériaux = "montre".id_matériaux
AND "matériaux".libelle = 'tissu';

CREATE VIEW allmateriaux as
SELECT *
FROM "materiaux"

CREATE VIEW allmontre as
SELECT *
FROM "Montre"

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

CREATE POLICY "Enable read access for all users" ON "public"."materiaux"
AS PERMISSIVE FOR SELECT
TO public
USING (true)

CREATE POLICY "Enable read access for all users" ON "public"."Montre"
AS PERMISSIVE FOR SELECT
TO public
USING (true)

CREATE POLICY "Enable insert for authenticated users only" ON "public"."Montre"
AS PERMISSIVE FOR INSERT
TO authenticated

WITH CHECK (true)

CREATE POLICY "Update based on e mail"
ON public.Montre
FOR UPDATE USING(
    (uid() = id_users) 
) WITH CHECK (
    uid() IN ( SELECT Montre.id_users FROM Montre )
)

CREATE POLICY "Enable delete for users based on user_id" ON "public"."Montre"
AS PERMISSIVE FOR DELETE
TO public
USING (auth.uid() = users_id)