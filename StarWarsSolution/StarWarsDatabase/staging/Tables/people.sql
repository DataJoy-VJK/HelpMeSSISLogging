CREATE TABLE [staging].[people] (
    [filename]   VARCHAR (25)   NOT NULL,
    [films]      NVARCHAR (MAX) NOT NULL,
    [url]        VARCHAR (50)   NOT NULL,
    [gender]     VARCHAR (25)   NOT NULL,
    [height]     VARCHAR (25)   NOT NULL,
    [mass]       VARCHAR (25)   NOT NULL,
    [hair_color] VARCHAR (25)   NOT NULL,
    [name]       VARCHAR (50)   NOT NULL,
    [starships]  NVARCHAR (MAX) NOT NULL,
    [birth_year] VARCHAR (25)   NOT NULL,
    [skin_color] VARCHAR (50)   NOT NULL,
    [created]    VARCHAR (50)   NOT NULL,
    [edited]     VARCHAR (50)   NOT NULL,
    [homeworld]  VARCHAR (50)   NOT NULL,
    [species]    NVARCHAR (MAX) NOT NULL,
    [eye_color]  VARCHAR (25)   NOT NULL,
    [vehicles]   NVARCHAR (MAX) NOT NULL
);

