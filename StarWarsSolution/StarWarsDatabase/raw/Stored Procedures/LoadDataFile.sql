
CREATE PROC [raw].[LoadDataFile] (@FilePath AS VARCHAR(200), @FileType AS VARCHAR(25), @FileName AS VARCHAR(25))--, @RecordCount INT OUTPUT)
AS

DECLARE @Cmd AS VARCHAR(MAX)
	
SET @FilePath = @FilePath + @FileName
SET @Cmd = 
	'INSERT INTO StarWars.raw.JsonFiles select ''' + @FileName + ''' AS FileName, ''' + @FileType + ''' AS FileType, * from
	(SELECT [value] AS [RecordCount]
	FROM OPENROWSET (BULK ''' + @FilePath + ''', SINGLE_CLOB) as j
	cross APPLY OPENJSON(BulkColumn)
	WHERE [key] = ''count''
	) cnt join
	(SELECT [value] AS [Data]
	FROM OPENROWSET (BULK ''' + @FilePath + ''', SINGLE_CLOB) as j
	cross APPLY OPENJSON(BulkColumn)
	WHERE [key] = ''results''
	) [data] on 1=1'

 EXEC (@cmd)

 RETURN (SELECT [RecordCount]
 FROM StarWars.raw.JsonFiles 
 WHERE FileName = @FileName)

 --SELECT @RecordCount = [RecordCount]
 --FROM StarWars.raw.JsonFiles 
 --WHERE FileName = @FileName