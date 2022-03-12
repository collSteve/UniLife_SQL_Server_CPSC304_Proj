CREATE TABLE [dbo].[Monitoring]
(
	[AID] INT,
    [UniName] VARCHAR(200),	
    [Type_of_post] VARCHAR,	
    PRIMARY KEY (AID, UniName),
    FOREIGN KEY (AID) references Admin(AID),
    FOREIGN KEY (UniName) references University(UniName)
)
