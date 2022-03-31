CREATE PROC [dbo].[LogFileProcess] (@LogType VARCHAR(15), @ExecutionId BIGINT, @FileName varchar(15), @PackageName varchar(25),
	@TaskName varchar(25), @Status varchar(10), @FileType varchar(10) = NULL, @RecordCount INT = NULL)

AS

DECLARE @CurrentTime AS DATETIME2 = GETDATE()

SET @FileType = ISNULL(@FileType, CASE WHEN @TaskName like 'Insert%' THEN RIGHT(@TaskName, LEN(@TaskName) - 6) ELSE 'N/A' END)

IF @FileType = 'N/A'
	SET @RecordCount = NULL

IF @LogType = 'Insert'
	INSERT INTO dbo.FileLog
	VALUES (@ExecutionId, @FileName, @FileType, @PackageName, 
	@TaskName, @Status, @CurrentTime, NULL, NULL)
ELSE
	UPDATE dbo.FileLog
	SET EndTime = @CurrentTime, RecordCount = @RecordCount, [Status] = @Status
	WHERE
		ExecutionId = @ExecutionId
		AND [FileName] = @FileName
		AND PackageName = @PackageName
		AND TaskName = @TaskName