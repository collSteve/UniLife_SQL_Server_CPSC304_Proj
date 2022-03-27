CREATE TABLE [dbo].[Comment]
(
	[CID] INT NOT NULL PRIMARY KEY,
	[Comment_Body] VARCHAR(max),
	[Creator_UID] INT NOT NULL FOREIGN KEY REFERENCES User_Account(AID),
	[PID] INT NOT NULL REFERENCES Post(PID) on delete cascade on update cascade
)
