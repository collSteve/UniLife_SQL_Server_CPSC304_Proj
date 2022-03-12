﻿CREATE TABLE [dbo].[Member_Of]
(
	[AID] INT,
    [GID] INT,	
    [Role] VARCHAR(200),	
    PRIMARY KEY (AID, GID),
    FOREIGN KEY (AID) references Account(AID),
    FOREIGN KEY (GID) references [Group](GID)
)
