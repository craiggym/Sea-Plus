CREATE TABLE [dbo].[Available] (
    [Date] CHAR(12) NOT NULL,
    [Upper1730] INT NULL, 
    [Upper1830] INT NULL, 
    [Upper1930] INT NULL, 
    [Lower1730] INT NULL, 
    [Lower1830] INT NULL, 
    [Lower1930] INT NULL, 
    [Undersea1730] INT NULL, 
    [Undersea1830] INT NULL, 
    [Undersea1930] INT NULL, 
    [Balcony1730] INT NULL, 
    [Balcony1830] INT NULL, 
    [Balcony1930] INT NULL, 
    PRIMARY KEY CLUSTERED ([Date] ASC)
);

