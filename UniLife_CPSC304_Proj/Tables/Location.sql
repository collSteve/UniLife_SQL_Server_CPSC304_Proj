CREATE TABLE [dbo].[Location]
(
	[City] VARCHAR(200),
	Province_State VARCHAR,
	Country VARCHAR,
	PRIMARY KEY (City, Province_State, Country),
	FOREIGN KEY (City) References CityCode(City)
)
