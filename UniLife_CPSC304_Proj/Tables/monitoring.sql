CREATE TABLE [dbo].[Monitoring]
(
	[AID] INT,
    [UniName] VARCHAR(200),	
    [Type_of_post] VARCHAR(200),	
    PRIMARY KEY (AID, UniName),
    FOREIGN KEY (AID) references Admin_Account(AID),
    FOREIGN KEY (UniName) references University(UniName)
)
