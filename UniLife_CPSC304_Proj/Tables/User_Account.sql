﻿CREATE TABLE [dbo].[User_Account]
(
	[AID] INT NOT NULL PRIMARY KEY,
	[Seller_Rating] float,
	FOREIGN KEY (AID) REFERENCES Account(AID)
)
