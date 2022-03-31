
CREATE PROC staging.[InsertStarshipsBridgeTables] AS

insert into starwars.staging.starships_films
select f.filename, f.url as starships_url, a.url as films_url
from starwars.staging.starships f
outer apply
openjson (films)
 WITH( [url] [varchar](100) '$'
) AS a
where a.url is not null

insert into starwars.staging.starships_pilots
select f.filename, f.url as starships_url, a.url as people_url
from starwars.staging.starships f
outer apply
openjson ([pilots])
 WITH( [url] [varchar](100) '$'
) AS a
where a.url is not null