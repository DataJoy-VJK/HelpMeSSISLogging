CREATE TABLE [staging].[vehicles] (
    [filename]               VARCHAR (25)   NOT NULL,
    [films]                  NVARCHAR (MAX) NOT NULL,
    [passengers]             VARCHAR (25)   NOT NULL,
    [max_atmosphering_speed] VARCHAR (25)   NOT NULL,
    [manufacturer]           VARCHAR (100)  NOT NULL,
    [url]                    VARCHAR (50)   NOT NULL,
    [crew]                   VARCHAR (25)   NOT NULL,
    [length]                 VARCHAR (25)   NOT NULL,
    [cargo_capacity]         VARCHAR (25)   NOT NULL,
    [vehicle_class]          VARCHAR (50)   NOT NULL,
    [consumables]            VARCHAR (25)   NOT NULL,
    [created]                VARCHAR (50)   NOT NULL,
    [edited]                 VARCHAR (50)   NOT NULL,
    [model]                  VARCHAR (50)   NOT NULL,
    [pilots]                 NVARCHAR (MAX) NOT NULL,
    [name]                   VARCHAR (50)   NOT NULL,
    [cost_in_credits]        VARCHAR (25)   NOT NULL
);

