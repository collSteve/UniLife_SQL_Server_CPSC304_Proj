CREATE TABLE [dbo].[Advertisements]
(
    [AdID] INT PRIMARY KEY,
    [ad_description] VARCHAR(MAX),
    [price] FLOAT,
    [title] VARCHAR(200),
    [clicks] INT,
    [Create_Date] Date
)