CREATE TABLE [dbo].[User_category] 
(
    AID INT,
    ctg_type varchar(50),
    percentage float,
    PRIMARY KEY (AID, ctg_type),
    Foreign key (AID) REFERENCES User_Account(AID),
    Foreign key (ctg_type) REFERENCES Categories(ctg_type)
)