CREATE TABLE [dbo].[Post_category]
(
    PID INT,
    ctg_type varchar(50),
    PRIMARY KEY (PID, ctg_type),
    Foreign key (PID) REFERENCES Post(PID) on delete cascade on update cascade,
    Foreign key (ctg_type) REFERENCES Categories(ctg_type) on delete cascade on update cascade
)