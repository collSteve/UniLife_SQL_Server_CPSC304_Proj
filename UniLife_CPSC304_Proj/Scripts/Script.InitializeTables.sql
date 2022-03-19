/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

/* Steve */

If Not Exists(select * from [dbo].Account where [AID]=1)
Begin
INSERT [dbo].Account([AID], Username, Email, [Password]) 
VALUES (1, 'Steve', 'wefew@gmail.com', 'My Password'); 
End

If Not Exists(select * from [dbo].Account where [AID]=2)
Begin
INSERT [dbo].Account([AID], Username, Email, [Password]) 
VALUES (2, 'User2', 'User2@gmail.com', 'user2'); 
End

If Not Exists(select * from [dbo].[User_Account] where [AID]=2)
Begin
INSERT [dbo].[User_Account]([AID], [Seller_Rating]) 
VALUES (2, 9.8); 
End

If Not Exists(select * from [dbo].Post where [PID]=1)
Begin
INSERT [dbo].Post([PID], [Create_Date], [Title], [Post_Body], [Num_Likes], [Num_Dislikes], [Creator_UID]) 
VALUES (1, CAST(N'2022-12-03' AS Date), 'My Post Title', 'My Post body', 5, 2, 2); 
End

/* Table Data for CityCode */
If Not Exists(select * from [dbo].[CityCode] where [City]='Vancouver')
Begin
INSERT [dbo].CityCode(City, ACode) 
VALUES ('Vancouver', 778); 
End
If Not Exists(select * from [dbo].[CityCode] where [City]='Toronto')
Begin
INSERT [dbo].CityCode(City, ACode) 
VALUES ('Toronto', 416); 
End
If Not Exists(select * from [dbo].[CityCode] where [City]='Ottawa')
Begin
INSERT [dbo].CityCode(City, ACode) 
VALUES ('Ottawa', 613); 
End
If Not Exists(select * from [dbo].[CityCode] where [City]='Edmonton')
Begin
INSERT [dbo].CityCode(City, ACode) 
VALUES ('Edmonton', 780); 
End
If Not Exists(select * from [dbo].[CityCode] where [City]='New York City')
Begin
INSERT [dbo].CityCode(City, ACode) 
VALUES ('New York City', 212); 
End
If Not Exists(select * from [dbo].[CityCode] where [City]='Cambridge')
Begin
INSERT [dbo].CityCode(City, ACode) 
VALUES ('Cambridge', 519); 
End
If Not Exists(select * from [dbo].[CityCode] where [City]='Victoria')
Begin
INSERT [dbo].CityCode(City, ACode) 
VALUES ('Victoria', 250); 
End

/* Table data for location */
If Not Exists(select * from [dbo].[Location] where [City]='Vancouver' and [Province_State]='BC')
Begin
INSERT [dbo].[Location](City, Province_State, Country) 
VALUES ('Vancouver', 'BC', 'Canada'); 
End
If Not Exists(select * from [dbo].[Location] where [City]='Toronto' and [Province_State]='Ontario')
Begin
INSERT [dbo].[Location](City, Province_State, Country) 
VALUES ('Toronto', 'Ontario', 'Canada'); 
End
If Not Exists(select * from [dbo].[Location] where [City]='Ottawa' and [Province_State]='Ontario')
Begin
INSERT [dbo].[Location](City, Province_State, Country) 
VALUES ('Ottawa', 'Ontario', 'Canada'); 
End
If Not Exists(select * from [dbo].[Location] where [City]='Edmonton' and [Province_State]='Alberta')
Begin
INSERT [dbo].[Location](City, Province_State, Country) 
VALUES ('Edmonton', 'Alberta', 'Canada'); 
End
If Not Exists(select * from [dbo].[Location] where [City]='New York City' and [Province_State]='NY')
Begin
INSERT [dbo].[Location](City, Province_State, Country) 
VALUES ('New York City', 'NY', 'USA'); 
End
If Not Exists(select * from [dbo].[Location] where [City]='Cambridge' and [Province_State]='MS')
Begin
INSERT [dbo].[Location](City, Province_State, Country) 
VALUES ('Cambridge', 'MS', 'USA'); 
End
If Not Exists(select * from [dbo].[Location] where [City]='Victoria')
Begin
INSERT [dbo].[Location](City, Province_State, Country) 
VALUES ('Victoria', 'BC', 'Canada'); 
End

/* Table data for university */
If Not Exists(select * from [dbo].[University] where [UniName]='UBC')
Begin
INSERT [dbo].[University](UniName) 
VALUES ('UBC'); 
End
If Not Exists(select * from [dbo].[University] where [UniName]='UVIC')
Begin
INSERT [dbo].[University](UniName) 
VALUES ('UVIC'); 
End
If Not Exists(select * from [dbo].[University] where [UniName]='NYU')
Begin
INSERT [dbo].[University](UniName) 
VALUES ('NYU'); 
End
If Not Exists(select * from [dbo].[University] where [UniName]='UofT')
Begin
INSERT [dbo].[University](UniName) 
VALUES ('UofT'); 
End
If Not Exists(select * from [dbo].[University] where [UniName]='Harvard')
Begin
INSERT [dbo].[University](UniName) 
VALUES ('Harvard'); 
End

/* Table data for Group */
If Not Exists(select * from [dbo].[Group] where [GID]='1111')
Begin
INSERT [dbo].[Group](GID, Group_Name) 
VALUES (1111, 'Group1'); 
End
If Not Exists(select * from [dbo].[Group] where [GID]='2222')
Begin
INSERT [dbo].[Group](GID, Group_Name) 
VALUES (2222, 'Group2'); 
End
If Not Exists(select * from [dbo].[Group] where [GID]='3333')
Begin
INSERT [dbo].[Group](GID, Group_Name) 
VALUES (3333, 'Group3'); 
End
If Not Exists(select * from [dbo].[Group] where [GID]='4444')
Begin
INSERT [dbo].[Group](GID, Group_Name) 
VALUES (4444, 'Group4'); 
End
If Not Exists(select * from [dbo].[Group] where [GID]='5555')
Begin
INSERT [dbo].[Group](GID, Group_Name) 
VALUES (5555, 'Group5'); 
End

/* table data for Located_In */
If Not Exists(select * from [dbo].[Located_In] where [UniName]='UBC')
Begin
INSERT [dbo].[Located_In](UniName, City, Province_State, Country) 
VALUES ('UBC', 'Vancouver', 'BC', 'Canada'); 
End
If Not Exists(select * from [dbo].[Located_In] where [UniName]='UofT')
Begin
INSERT [dbo].[Located_In](UniName, City, Province_State, Country) 
VALUES ('UofT', 'Toronto', 'Ontario', 'Canada'); 
End
If Not Exists(select * from [dbo].[Located_In] where [UniName]='NYU')
Begin
INSERT [dbo].[Located_In](UniName, City, Province_State, Country) 
VALUES ('NYU', 'New York City', 'NY', 'USA'); 
End
If Not Exists(select * from [dbo].[Located_In] where [UniName]='Harvard')
Begin
INSERT [dbo].[Located_In](UniName, City, Province_State, Country) 
VALUES ('Harvard', 'Cambridge', 'MS', 'USA'); 
End
If Not Exists(select * from [dbo].[Located_In] where [UniName]='UVIC')
Begin
INSERT [dbo].[Located_In](UniName, City, Province_State, Country) 
VALUES ('UVIC', 'Victoria', 'BC', 'Canada'); 
End

