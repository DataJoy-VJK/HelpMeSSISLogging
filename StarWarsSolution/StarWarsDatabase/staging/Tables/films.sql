CREATE TABLE [staging].[films] (
    [filename]      VARCHAR (25)   NOT NULL,
    [url]           VARCHAR (50)   NOT NULL,
    [title]         VARCHAR (50)   NOT NULL,
    [director]      VARCHAR (25)   NOT NULL,
    [characters]    NVARCHAR (MAX) NOT NULL,
    [release_date]  VARCHAR (25)   NOT NULL,
    [producer]      VARCHAR (100)  NOT NULL,
    [created]       VARCHAR (50)   NOT NULL,
    [starships]     NVARCHAR (MAX) NOT NULL,
    [opening_crawl] VARCHAR (1000) NOT NULL,
    [edited]        VARCHAR (50)   NOT NULL,
    [vehicles]      NVARCHAR (MAX) NOT NULL,
    [species]       NVARCHAR (MAX) NOT NULL,
    [planets]       NVARCHAR (MAX) NOT NULL,
    [episode_id]    TINYINT        NOT NULL
);

