CREATE TABLE [dbo].[Has_Group_Post]
(
	[GID] INT FOREIGN KEY REFERENCES [Group](GID) on delete cascade on update cascade,
	[PID] INT FOREIGN KEY REFERENCES Post(PID) on delete cascade on update cascade,
	PRIMARY KEY (GID, PID),
)
