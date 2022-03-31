
CREATE PROC staging.[InsertVehiclesBridgeTables] AS

insert into starwars.staging.vehicles_films
select f.filename, f.url as vehicles_url, a.url as films_url
from starwars.staging.vehicles f
outer apply
openjson (films)
 WITH( [url] [varchar](100) '$'
) AS a
where a.url is not null

insert into starwars.staging.vehicles_pilots
select f.filename, f.url as vehicles_url, a.url as people_url
from starwars.staging.vehicles f
outer apply
openjson ([pilots])
 WITH( [url] [varchar](100) '$'
) AS a
where a.url is not null