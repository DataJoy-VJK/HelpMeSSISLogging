
CREATE proc [staging].[InsertPeople] as 
insert into starwars.staging.people
select j.[filename], a.*
from starwars.raw.jsonfiles j
outer apply
openjson ([data])
 WITH(
 films nvarchar(max) as json,
 [url] [varchar](100)  ,
	[gender] [varchar](10)  ,
	height [varchar](100)  ,
	mass [varchar](100)  ,
	hair_color [varchar](100)  ,
	[name] [varchar](100)  ,
	starships [nvarchar](MAX) as json  ,
	birth_year varchar(100),
	skin_color varchar(100),
	created varchar(100),
	[edited] [varchar](100)  ,
	homeworld varchar(100),
	species nvarchar(max) as json,
	eye_color varchar(100),
	vehicles nvarchar(max) as json
) AS a
where filetype = 'people'

RETURN @@ROWCOUNT