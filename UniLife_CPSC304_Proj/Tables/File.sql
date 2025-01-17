﻿CREATE TABLE [dbo].[File]
(
	[FID] INT NOT NULL PRIMARY KEY,
	[File_Location] VARCHAR(max) NOT NULL,
	[PID] INT NOT NULL FOREIGN KEY REFERENCES Post(PID) on delete cascade on update cascade,
	[File_Type] VARCHAR(200) NOT NULL FOREIGN KEY REFERENCES File_Type([Type]) 
	on delete cascade on update cascade
)
