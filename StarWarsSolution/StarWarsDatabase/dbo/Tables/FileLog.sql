CREATE TABLE [dbo].[FileLog] (
    [ExecutionId] BIGINT        NOT NULL,
    [FileName]    VARCHAR (15)  NOT NULL,
    [FileType]    VARCHAR (10)  NOT NULL,
    [PackageName] VARCHAR (25)  NOT NULL,
    [TaskName]    VARCHAR (25)  NOT NULL,
    [Status]      VARCHAR (10)  NOT NULL,
    [BeginTime]   DATETIME2 (7) NOT NULL,
    [EndTime]     DATETIME2 (7) NULL,
    [RecordCount] INT           NULL
);

