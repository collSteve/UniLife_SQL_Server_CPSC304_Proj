CREATE TABLE [dbo].[Location]
(
	[City] VARCHAR(200),
	Province_State VARCHAR(200),
	Country VARCHAR(200),
	PRIMARY KEY (City, Province_State, Country),
	FOREIGN KEY (City) References CityCode(City)
)
