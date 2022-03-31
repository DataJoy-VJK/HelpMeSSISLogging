
CREATE proc [staging].[InsertFilms]
as

insert into starwars.staging.films
select j.[filename], a.*
from starwars.raw.jsonfiles j
outer apply
openjson ([data])
 WITH(	[url] [varchar](100)  ,
	[title] [varchar](100)  ,
	[director] [varchar](100)  ,
	[characters] [nvarchar](MAX) as json ,
	[release_date] [varchar](100)  ,
	[producer] [varchar](100)  ,
	[created] [varchar](100)  ,
	[starships] [nvarchar](MAX) as json ,
	[opening_crawl] [varchar](1000)  ,
	[edited] [varchar](100)  ,
	[vehicles] [nvarchar](MAX) AS JSON,
	[species] [nvarchar](MAX) AS JSON,
	[planets] [nvarchar](MAX) AS JSON,
	[episode_id] [int]  
) AS a
where filetype = 'films'

RETURN @@ROWCOUNT