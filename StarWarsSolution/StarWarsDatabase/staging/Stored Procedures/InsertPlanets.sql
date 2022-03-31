
CREATE proc [staging].[InsertPlanets]
AS
insert into starwars.staging.planets
select j.[filename], a.*
from starwars.raw.jsonfiles j
outer apply
openjson ([data])
 WITH(
	surface_water [varchar](100)  ,
	rotation_period [varchar](100)  ,
	gravity [varchar](100)  ,
	diameter [varchar](100)  ,
	terrain varchar(100),
 films nvarchar(max) as json,
	climate varchar(100),
	created varchar(100),
 [url] [varchar](100)  ,
	orbital_period varchar(100),
	[edited] [varchar](100)  ,
	[name] varchar(100),
	residents nvarchar(max) as json,
		population varchar(100)
) AS a
where filetype = 'planets'

RETURN @@ROWCOUNT