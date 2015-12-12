CREATE TABLE [dbo].[Reservation] (
    [Rnum]          INT        NOT NULL IDENTITY,
    [NoOfPeople]    INT        NULL,
    [Date]          NCHAR (10) NULL,
    [View]          NCHAR (10) NULL,
    [AvailableSeat] INT        NULL,
    [UserName]      NCHAR (20) NULL,
    PRIMARY KEY CLUSTERED ([Rnum] ASC)
);

