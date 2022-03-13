CREATE TABLE [dbo].[Ad_category]
(
    AdID INT,
    ctg_type varchar(50),
    PRIMARY KEY (AdID, ctg_type),
    Foreign key (AdID) REFERENCES Advertisements(AdID),
    Foreign key (ctg_type) REFERENCES Categories(ctg_type)
)