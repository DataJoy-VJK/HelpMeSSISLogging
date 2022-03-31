/* Custom logging queries */
	-- Raw
	SELECT *
	FROM StarWars.dbo.FileLog
	WHERE PackageName = 'ExtractRawData'
	ORDER BY [FileName]

	SELECT *
	FROM StarWars.raw.JsonFiles
	ORDER BY [FileName]

	-- Staging
	SELECT *
	FROM StarWars.dbo.FileLog
	WHERE PackageName = 'TransformMainTables'
	ORDER BY FileType

	SELECT *
	FROM StarWars.staging.films
	ORDER BY episode_id 

	-- Raw and Main
	SELECT FileType, TaskName, Sum(RecordCount)
	FROM StarWars.dbo.filelog
	WHERE TaskName <> 'TransformMainTables'
	GROUP BY filetype, taskname
	ORDER BY filetype, taskname
