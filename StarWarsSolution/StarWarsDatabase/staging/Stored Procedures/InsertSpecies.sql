
CREATE proc [staging].[InsertSpecies] as

insert into starwars.staging.species
select j.[filename], a.*
from starwars.raw.jsonfiles j
outer apply
openjson ([data])
 WITH(
	homeworld [varchar](100)  ,
 films nvarchar(max) as json,
	[language] [varchar](100)  ,
	eye_colors [varchar](100)  ,
	average_lifespan [varchar](100)  ,
	people nvarchar(max) as json,
	hair_colors varchar(100),
	skin_colors varchar(100),
	created varchar(100),
 [url] [varchar](100)  ,
	average_height varchar(100),
	[edited] [varchar](100)  ,
	designation varchar(100),
	[name] varchar(100),
	classification varchar(100)
) AS a
where filetype = 'species'

RETURN @@ROWCOUNT