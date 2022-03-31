
CREATE proc [staging].[InsertStarships] AS

insert into starwars.staging.starships
select j.[filename], a.*
from starwars.raw.jsonfiles j
outer apply
openjson ([data])
 WITH(
 films nvarchar(max) as json,
	passengers [varchar](100)  ,
	max_atmosphering_speed [varchar](100)  ,
	manufacturer [varchar](100)  ,
	crew [varchar](100)  ,
	[length] varchar(100),
	cargo_capacity varchar(100),
 [url] [varchar](100)  ,
	consumables varchar(100),
	pilots nvarchar(max) as json,
	[edited] [varchar](100)  ,
	created varchar(100),
	starship_class varchar(100),
	model varchar(100),
	hyperdrive_rating varchar(100),
	MGLT varchar(100),
	[name] varchar(100),
	cost_in_credits varchar(100)
) AS a
where filetype = 'starships'

RETURN @@ROWCOUNT