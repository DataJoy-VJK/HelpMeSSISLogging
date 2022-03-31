
CREATE PROC staging.[InsertPlanetsBridgeTables] AS

insert into starwars.staging.planets_films
select f.filename, f.url as planets_url, a.url as films_url
from starwars.staging.planets f
outer apply
openjson (films)
 WITH( [url] [varchar](100) '$'
) AS a
where a.url is not null

insert into starwars.staging.planets_residents
select f.filename, f.url as planets_url, a.url as people_url
from starwars.staging.planets f
outer apply
openjson ([residents])
 WITH( [url] [varchar](100) '$'
) AS a
where a.url is not null