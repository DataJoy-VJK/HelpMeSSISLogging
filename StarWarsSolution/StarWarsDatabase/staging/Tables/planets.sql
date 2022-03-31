CREATE TABLE [staging].[planets] (
    [filename]        VARCHAR (25)   NOT NULL,
    [surface_water]   VARCHAR (25)   NOT NULL,
    [rotation_period] VARCHAR (25)   NOT NULL,
    [gravity]         VARCHAR (50)   NOT NULL,
    [diameter]        VARCHAR (25)   NOT NULL,
    [terrain]         VARCHAR (50)   NOT NULL,
    [films]           NVARCHAR (MAX) NOT NULL,
    [climate]         VARCHAR (50)   NOT NULL,
    [created]         VARCHAR (50)   NOT NULL,
    [url]             VARCHAR (50)   NOT NULL,
    [orbital_period]  VARCHAR (25)   NOT NULL,
    [edited]          VARCHAR (50)   NOT NULL,
    [name]            VARCHAR (25)   NOT NULL,
    [residents]       NVARCHAR (MAX) NOT NULL,
    [population]      VARCHAR (25)   NOT NULL
);

