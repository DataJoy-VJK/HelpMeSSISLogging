
CREATE PROC staging.[InsertPeopleBridgeTables] AS

insert into starwars.staging.people_films
select f.filename, f.url as people_url, a.url as films_url
from starwars.staging.people f
outer apply
openjson (films)
 WITH( [url] [varchar](100) '$'
) AS a
where a.url is not null


insert into starwars.staging.people_vehicles
select f.filename, f.url as people_url, a.url as people_url
from starwars.staging.people f
outer apply
openjson ([vehicles])
 WITH( [url] [varchar](100) '$'
) AS a
where a.url is not null

	
insert into starwars.staging.people_starships
select f.filename, f.url as people_url, a.url as people_url
from starwars.staging.people f
outer apply
openjson ([starships])
 WITH( [url] [varchar](100) '$'
) AS a
where a.url is not null


insert into starwars.staging.people_species
select f.filename, f.url as people_url, a.url as people_url
from starwars.staging.people f
outer apply
openjson ([species])
 WITH( [url] [varchar](100) '$'
) AS a
where a.url is not null