CREATE TABLE [dbo].[Located_in](
	[UniName]	VARCHAR(200),
	[Province_State] VARCHAR(200) NOT NULL,
	[Country]	VARCHAR(200) NOT NULL,
	[City] 		VARCHAR(200) NOT NULL,
	PRIMARY KEY (UniName, Province_State, Country, City),
	FOREIGN KEY (UniName) References [University](UniName),
	FOREIGN KEY (City) references Location(City),
	FOREIGN KEY (Province_State) References [Location](Province_State),
	FOREIGN KEY (Country) references Location(Country)

)
