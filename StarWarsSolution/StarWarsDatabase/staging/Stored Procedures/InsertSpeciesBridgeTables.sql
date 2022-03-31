
CREATE PROC staging.[InsertSpeciesBridgeTables] AS

insert into starwars.staging.species_films
select f.filename, f.url as species_url, a.url as films_url
from starwars.staging.species f
outer apply
openjson (films)
 WITH( [url] [varchar](100) '$'
) AS a
where a.url is not null

insert into starwars.staging.species_people
select f.filename, f.url as species_url, a.url as people_url
from starwars.staging.species f
outer apply
openjson ([people])
 WITH( [url] [varchar](100) '$'
) AS a
where a.url is not null