CREATE TABLE [staging].[starships] (
    [filename]               VARCHAR (25)   NOT NULL,
    [films]                  NVARCHAR (MAX) NOT NULL,
    [passengers]             VARCHAR (25)   NOT NULL,
    [max_atmosphering_speed] VARCHAR (25)   NOT NULL,
    [manufacturer]           VARCHAR (100)  NOT NULL,
    [crew]                   VARCHAR (25)   NOT NULL,
    [length]                 VARCHAR (25)   NOT NULL,
    [cargo_capacity]         VARCHAR (25)   NOT NULL,
    [url]                    VARCHAR (50)   NOT NULL,
    [consumables]            VARCHAR (25)   NOT NULL,
    [pilots]                 NVARCHAR (MAX) NOT NULL,
    [edited]                 VARCHAR (50)   NOT NULL,
    [created]                VARCHAR (50)   NOT NULL,
    [starship_class]         VARCHAR (50)   NOT NULL,
    [model]                  VARCHAR (50)   NOT NULL,
    [hyperdrive_rating]      VARCHAR (25)   NOT NULL,
    [MGLT]                   VARCHAR (25)   NOT NULL,
    [name]                   VARCHAR (50)   NOT NULL,
    [cost_in_credits]        VARCHAR (25)   NOT NULL
);

