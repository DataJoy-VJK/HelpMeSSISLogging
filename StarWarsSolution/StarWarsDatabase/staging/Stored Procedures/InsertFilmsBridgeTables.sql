
CREATE PROC staging.[InsertFilmsBridgeTables] AS

insert into starwars.staging.films_planets
select f.filename, f.url as films_url, a.url as planets_url
from starwars.staging.films f
outer apply
openjson ([planets])
 WITH( [url] [varchar](100) '$'
) AS a
where a.url is not null


insert into starwars.staging.films_characters
select f.filename, f.url as films_url, a.url as people_url
from starwars.staging.films f
outer apply
openjson ([characters])
 WITH( [url] [varchar](100) '$'
) AS a
where a.url is not null


insert into starwars.staging.films_vehicles
select f.filename, f.url as films_url, a.url as people_url
from starwars.staging.films f
outer apply
openjson ([vehicles])
 WITH( [url] [varchar](100) '$'
) AS a
where a.url is not null

	
insert into starwars.staging.films_starships
select f.filename, f.url as films_url, a.url as people_url
from starwars.staging.films f
outer apply
openjson ([starships])
 WITH( [url] [varchar](100) '$'
) AS a
where a.url is not null

select * from starwars.staging.films_starships

insert into starwars.staging.films_species
select f.filename, f.url as films_url, a.url as people_url
from starwars.staging.films f
outer apply
openjson ([species])
 WITH( [url] [varchar](100) '$'
) AS a
where a.url is not null

select * from starwars.staging.films_species