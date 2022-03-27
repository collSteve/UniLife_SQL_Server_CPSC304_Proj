CREATE TABLE [dbo].[Post]
(
	[PID] INT NOT NULL PRIMARY KEY,
	[Create_Date] Date Not Null,
	[Title] VARCHAR(100),
	[Post_Body] VARCHAR(MAX),
	[Num_Likes] INT,
	[Num_Dislikes] INT,
	[Creator_UID] INT FOREIGN KEY REFERENCES [User_Account](AID) 
	on delete cascade on update cascade
	NOT NULL 
)
