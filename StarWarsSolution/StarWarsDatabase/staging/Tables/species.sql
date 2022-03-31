CREATE TABLE [staging].[species] (
    [filename]         VARCHAR (25)   NOT NULL,
    [homeworld]        VARCHAR (50)   NULL,
    [films]            NVARCHAR (MAX) NOT NULL,
    [language]         VARCHAR (25)   NOT NULL,
    [eye_colors]       VARCHAR (50)   NOT NULL,
    [average_lifespan] VARCHAR (25)   NOT NULL,
    [people]           NVARCHAR (MAX) NOT NULL,
    [hair_colors]      VARCHAR (50)   NOT NULL,
    [skin_colors]      VARCHAR (100)  NOT NULL,
    [created]          VARCHAR (50)   NOT NULL,
    [url]              VARCHAR (50)   NOT NULL,
    [average_height]   VARCHAR (25)   NOT NULL,
    [edited]           VARCHAR (50)   NOT NULL,
    [designation]      VARCHAR (25)   NOT NULL,
    [name]             VARCHAR (25)   NOT NULL,
    [classification]   VARCHAR (25)   NOT NULL
);

