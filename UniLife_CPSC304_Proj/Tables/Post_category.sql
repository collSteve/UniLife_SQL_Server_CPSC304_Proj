CREATE TABLE [dbo].[Post_category]
(
    PID INT,
    ctg_type varchar(50),
    PRIMARY KEY (PID, ctg_type),
    Foreign key (PID) REFERENCES Post(PID),
    Foreign key (ctg_type) REFERENCES Categories(ctg_type)
)