﻿CREATE TABLE [dbo].Enrolls_In(
	[AID] INT,
	[UniName]		VARCHAR(200),
	PRIMARY KEY (AID, UniName),
	FOREIGN KEY (AID) references User_Account(AID),
	FOREIGN KEY (UniName) references University(UniName)
)
