﻿CREATE TABLE [dbo].[Social_Media_Post]
(
	[PID] INT NOT NULL PRIMARY KEY,
	FOREIGN KEY (PID) REFERENCES Post(PID) on delete cascade on update cascade
)
