CREATE TABLE [dbo].[Create_ads]
(
    AdID INT PRIMARY KEY,
    AID INT NOT NULL,
    Foreign key (AdID) REFERENCES Advertisements(AdID),
    Foreign key (AID) REFERENCES Business_Account(AID)
)