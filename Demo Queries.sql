/* Log Provider Query */
	SELECT *
	FROM StarWars.dbo.sysssislog

/* Logging levels queries */
	-- None
	SELECT * 
	FROM SSISDB.catalog.event_messages
	WHERE operation_id = 12

	-- Basic
	SELECT * 
	FROM SSISDB.catalog.event_messages
	WHERE operation_id = 9

	-- Performance
	SELECT * 
	FROM SSISDB.catalog.event_messages
	WHERE operation_id = 15

	SELECT * 
	FROM SSISDB.catalog.event_messages
	WHERE operation_id = 44

	-- Verbose
	SELECT * 
	FROM SSISDB.catalog.event_messages
	WHERE operation_id = 18

	SELECT *
	FROM SSISDB.catalog.execution_data_statistics
	WHERE execution_id = 18

	SELECT *
	FROM SSISDB.catalog.execution_data_statistics
	WHERE execution_id = 53

	-- Custom: Basic Lite
	SELECT * 
	FROM SSISDB.catalog.event_messages
	WHERE operation_id = 56

	SELECT *
	FROM SSISDB.catalog.execution_data_statistics
	WHERE execution_id = 56

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
