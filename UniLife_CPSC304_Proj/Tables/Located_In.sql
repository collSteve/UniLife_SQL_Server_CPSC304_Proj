CREATE TABLE [dbo].[Located_in](
	[UniName]	VARCHAR(200),
	[City] 		VARCHAR(200) NOT NULL,
	[Province_State] VARCHAR(200) NOT NULL,
	[Country]	VARCHAR(200) NOT NULL,
	PRIMARY KEY (UniName),
	FOREIGN KEY (UniName) References [University](UniName),
	FOREIGN KEY (City, Province_State, Country) References [Location](City, [Province_State], Country)
)
