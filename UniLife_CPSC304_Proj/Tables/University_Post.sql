CREATE TABLE [dbo].[University_Post]
(
	UniName VARCHAR(200),
	PID INT 
	PRIMARY KEY(UniName, PID),
	FOREIGN KEY (PID) references Post(PID),
    FOREIGN KEY (UniName) references University(UniName)
)
