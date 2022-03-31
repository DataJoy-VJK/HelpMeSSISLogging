
CREATE proc [staging].[InsertVehicles] as

insert into starwars.staging.vehicles
select j.[filename], a.*
from starwars.raw.jsonfiles j
outer apply
openjson ([data])
 WITH(
 films nvarchar(max) as json,
	passengers [varchar](100)  ,
	max_atmosphering_speed [varchar](100)  ,
	manufacturer [varchar](100)  ,
 [url] [varchar](100)  ,
	crew [varchar](100)  ,
	[length] varchar(100),
	cargo_capacity varchar(100),
	vehicle_class varchar(100),
	consumables varchar(100),
	created varchar(100),
	[edited] [varchar](100)  ,
	model varchar(100),
	pilots nvarchar(max) as json,
	[name] varchar(100),
	cost_in_credits varchar(100)
) AS a
where filetype = 'vehicles'

RETURN @@ROWCOUNT