CREATE TABLE [dbo].[Reservation]
(
	[Rnum] INT NOT NULL PRIMARY KEY, 
    [NoOfPeople] INT NULL, 
    [Date] NCHAR(10) NULL, 
    [View] NCHAR(10) NULL, 
    [AvailableSeat] INT NULL, 
    [UserName] NCHAR(15) NULL
)
