﻿

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
/* File type */

IF NOT EXISTS(select* from [dbo].File_Type where [Type]='Image')
Begin 
Insert dbo.File_Type([Type])
VALUES( 'Image');
END

IF NOT EXISTS(select* from [dbo].File_Type where [Type]='Video')
Begin 
Insert dbo.File_Type([Type])
VALUES( 'Video');
END

IF NOT EXISTS(select* from [dbo].File_Type where [Type]='Audio')
Begin 
Insert dbo.File_Type([Type])
VALUES( 'Audio');
END

IF NOT EXISTS(select* from [dbo].File_Type where [Type]='Other')
Begin 
Insert dbo.File_Type([Type])
VALUES( 'Other');
END

/* Post */

If Not Exists(select * from [dbo].Post where [PID]=1)
Begin
INSERT [dbo].Post([PID], [Create_Date], [Title], [Post_Body], [Num_Likes], [Num_Dislikes], [Creator_UID]) 
VALUES (1, CAST(N'2022-12-03' AS Date), 'Sell Pepper', 'I want to sell my pepper', 5, 2, 2); 
End

If Not Exists(select * from [dbo].Post where [PID]=2)
Begin
INSERT [dbo].Post([PID], [Create_Date], [Title], [Post_Body], [Num_Likes], [Num_Dislikes], [Creator_UID]) 
VALUES (2, CAST(N'1999-02-21' AS Date), 'Dogs are awesome', 'Dogs are humans best friends', 78, 0, 2); 
End

If Not Exists(select * from [dbo].Post where [PID]=3)
Begin
INSERT [dbo].Post([PID], [Create_Date], [Title], [Post_Body], [Num_Likes], [Num_Dislikes], [Creator_UID]) 
VALUES (3, CAST(N'2002-06-12' AS Date), 'Cats suck', 'Cats suck because their poops smells too bad', 910, 234, 2); 
End

If Not Exists(select * from [dbo].Post where [PID]=4)
Begin
INSERT [dbo].Post([PID], [Create_Date], [Title], [Post_Body], [Num_Likes], [Num_Dislikes], [Creator_UID]) 
VALUES (4, CAST(N'2002-06-12' AS Date), 'Eating Subway in Subway', 'Subs yeet eifjweifie', 9120, 234, 2); 
End

If Not Exists(select * from [dbo].Post where [PID]=5)
Begin
INSERT [dbo].Post([PID], [Create_Date], [Title], [Post_Body], [Num_Likes], [Num_Dislikes], [Creator_UID]) 
VALUES (5, CAST(N'2005-11-13' AS Date), 'Sales on textbooks', 'Moving out so selling my CS texts: <software is bad>: $12', 5, 2, 2); 
End

If Not Exists(select * from [dbo].Post where [PID]=6)
Begin
INSERT [dbo].Post([PID], [Create_Date], [Title], [Post_Body], [Num_Likes], [Num_Dislikes], [Creator_UID]) 
VALUES (6, CAST(N'1997-10-13' AS Date), 'Selling My Table tennis Brackets', 'Pro tb brackets for only 100 bucks', 5, 2, 2); 
End

If Not Exists(select * from [dbo].Post where [PID]=7)
Begin
INSERT [dbo].Post([PID], [Create_Date], [Title], [Post_Body], [Num_Likes], [Num_Dislikes], [Creator_UID]) 
VALUES (7, CAST(N'1967-10-13' AS Date), 'Large Luxury Apartment for rent', '3 bedroom apartment for $3300/month hydro included', 5, 2, 2); 
End

If Not Exists(select * from [dbo].Post where [PID]=8)
Begin
INSERT [dbo].Post([PID], [Create_Date], [Title], [Post_Body], [Num_Likes], [Num_Dislikes], [Creator_UID]) 
VALUES (8, CAST(N'2009-09-13' AS Date), 'Mansion for sale', '1900 ft^2 mansion: 8 bedrooms, 6 washrooms with removable rocket lauchers. $10,000,000', 5, 2, 2); 
End

If Not Exists(select * from [dbo].Post where [PID]=9)
Begin
INSERT [dbo].Post([PID], [Create_Date], [Title], [Post_Body], [Num_Likes], [Num_Dislikes], [Creator_UID]) 
VALUES (9, CAST(N'1912-10-13' AS Date), 'Abandoned warehouse', ' 2,000 square ft Military warehouse abandoned due to WWI. Now selling to public for $2,000. Might include Chlorine gas and need removal by buyer himself', 5, 2, 2); 
End


/* Social Media Post */
If Not Exists(select * from [dbo].Social_Media_Post where [PID]=2)
Begin
INSERT [dbo].Social_Media_Post([PID])
VALUES (2); 
End

If Not Exists(select * from [dbo].Social_Media_Post where [PID]=3)
Begin
INSERT [dbo].Social_Media_Post([PID])
VALUES (3); 
End

If Not Exists(select * from [dbo].Social_Media_Post where [PID]=4)
Begin
INSERT [dbo].Social_Media_Post([PID])
VALUES (4); 
End

/* Selling Post*/
If Not Exists(select * from [dbo].Selling_Post where [PID]=1)
Begin
INSERT [dbo].Selling_Post([PID], [Phone_Num], [Email])
VALUES (1, 123456, 'test@123.com'); 
End

If Not Exists(select * from [dbo].Selling_Post where [PID]=5)
Begin
INSERT [dbo].Selling_Post([PID], [Phone_Num], [Email])
VALUES (5, 654321, 'test2@123.com'); 
End

If Not Exists(select * from [dbo].Selling_Post where [PID]=6)
Begin
INSERT [dbo].Selling_Post([PID], [Phone_Num], [Email])
VALUES (6, 98765, 'test3@123.com'); 
End

/* Housing post */
If Not Exists(select * from [dbo].Housing_Post where [PID]=7)
Begin
INSERT [dbo].Housing_Post([PID], [Address], [Email])
VALUES (7, '123 st YN, US', 'test4@123.com'); 
End

If Not Exists(select * from [dbo].Housing_Post where [PID]=8)
Begin
INSERT [dbo].Housing_Post([PID], [Address], [Email])
VALUES (8, '43 Ave, Hawaii, US', 'test5@123.com'); 
End

If Not Exists(select * from [dbo].Housing_Post where [PID]=9)
Begin
INSERT [dbo].Housing_Post([PID], [Address], [Email])
VALUES (9, '3434 Rixin road, Hanghai, China', 'test6@123.com'); 
End

/* File */
If Not Exists(select * from [dbo].[File] where [FID]=1)
Begin
INSERT [dbo].[File]([FID], [File_Location], [File_Type], PID) 
VALUES (1, 'https://cdn.pixabay.com/photo/2021/08/25/20/42/field-6574455__340.jpg', 'Image', 2); 
End

If Not Exists(select * from [dbo].[File] where [FID]=2)
Begin
INSERT [dbo].[File]([FID], [File_Location], [File_Type], PID) 
VALUES (2, 'https://www.gettyimages.ca/gi-resources/images/500px/983794168.jpg', 'Image', 3); 
End

If Not Exists(select * from [dbo].[File] where [FID]=3)
Begin
INSERT [dbo].[File]([FID], [File_Location], [File_Type], PID) 
VALUES (3, 'https://cdn.pixabay.com/photo/2018/08/14/13/23/ocean-3605547__340.jpg', 'Image', 8); 
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



/* table data for monitoring */

If Not Exists(select * from [dbo].[Monitoring] where AID=2001 and [UniName]='UVIC')
Begin
INSERT [dbo].Monitoring(AID, UniName, Type_of_post) 
VALUES (2001, 'UVIC', 'Selling Post'); 
End

If Not Exists(select * from [dbo].[Monitoring] where AID=2002 and [UniName]='UBC')
Begin
INSERT [dbo].Monitoring(AID, UniName, Type_of_post) 
VALUES (2002, 'UBC', 'Social Media Post'); 
End

If Not Exists(select * from [dbo].[Monitoring] where AID=2003 and [UniName]='NYU')
Begin
INSERT [dbo].Monitoring(AID, UniName, Type_of_post) 
VALUES (2003, 'NYU', 'Housing Post'); 
End

/*data for University_post*/
If Not Exists(select * from [dbo].University_Post where PID=1 and [UniName]='Harvard')
Begin
INSERT [dbo].University_Post(PID, UniName) 
VALUES (1, 'Harvard'); 
End
If Not Exists(select * from [dbo].University_Post where PID=2 and [UniName]='UBC')
Begin
INSERT [dbo].University_Post(PID, UniName) 
VALUES (2, 'UBC'); 
End
If Not Exists(select * from [dbo].University_Post where PID=3 and [UniName]='UVIC')
Begin
INSERT [dbo].University_Post(PID, UniName) 
VALUES (3, 'UVIC'); 
End
If Not Exists(select * from [dbo].University_Post where PID=4 and [UniName]='UofT')
Begin
INSERT [dbo].University_Post(PID, UniName) 
VALUES (4, 'UofT'); 
End


If Not Exists(select * from [dbo].Enrolls_In where AID=2 and [UniName]='UofT')
Begin
INSERT [dbo].Enrolls_In(AID, UniName) 
VALUES (2, 'UofT'); 
End
If Not Exists(select * from [dbo].Enrolls_In where AID=1001 and [UniName]='UBC')
Begin
INSERT [dbo].Enrolls_In(AID, UniName) 
VALUES (1001, 'UBC'); 
End
If Not Exists(select * from [dbo].Enrolls_In where AID=1002 and [UniName]='Harvard')
Begin
INSERT [dbo].Enrolls_In(AID, UniName) 
VALUES (1002, 'Harvard'); 
End
If Not Exists(select * from [dbo].Enrolls_In where AID=1003 and [UniName]='UVIC')
Begin
INSERT [dbo].Enrolls_In(AID, UniName) 
VALUES (1003, 'UVIC'); 
End


/* table data for member of */

If Not Exists(select * from [dbo].Member_Of where AID=1003 and GID=1111)
Begin
INSERT [dbo].Member_Of(AID, GID, [Role]) 
VALUES (1003, 1111, 'member'); 
End
If Not Exists(select * from [dbo].Member_Of where AID=1001 and GID=2222)
Begin
INSERT [dbo].Member_Of(AID, GID, [Role]) 
VALUES (1001, 2222, 'member'); 
End
If Not Exists(select * from [dbo].Member_Of where AID=1002 and GID=3333)
Begin
INSERT [dbo].Member_Of(AID, GID, [Role]) 
VALUES (1002, 3333, 'admin'); 
End




/* akm stuff */
/* AKM */

If Not Exists(select * from [dbo].Account where [AID]=1001)
Begin
INSERT [dbo].Account([AID], Username, Email, [Password]) 
VALUES (1001, 'Steven', 'wefew@gmail.com', 'My Password'); 
End

If Not Exists(select * from [dbo].Account where [AID]=1002)
Begin
INSERT [dbo].Account([AID], Username, Email, [Password]) 
VALUES (1002, 'User24', 'User24@gmail.com', 'user2'); 
End

If Not Exists(select * from [dbo].Account where [AID]=1003)
Begin
INSERT [dbo].Account([AID], Username, Email, [Password]) 
VALUES (1003, 'User3', 'User3@gmail.com', 'user3'); 
End

If Not Exists(select * from [dbo].Account where [AID]=2001)
Begin
INSERT [dbo].Account([AID], Username, Email, [Password]) 
VALUES (2001, 'Bot1', 'bot1@gmail.com', 'My Password'); 
End

If Not Exists(select * from [dbo].Account where [AID]=2002)
Begin
INSERT [dbo].Account([AID], Username, Email, [Password]) 
VALUES (2002, 'Bot2', 'bot2@gmail.com', 'user2'); 
End

If Not Exists(select * from [dbo].Account where [AID]=2003)
Begin
INSERT [dbo].Account([AID], Username, Email, [Password]) 
VALUES (2003, 'Bot3', 'bot3@gmail.com', 'user3'); 
End

If Not Exists(select * from [dbo].Account where [AID]=3001)
Begin
INSERT [dbo].Account([AID], Username, Email, [Password]) 
VALUES (3001, 'Microsoft', 'microsoft@gmail.com', 'My Password'); 
End

If Not Exists(select * from [dbo].Account where [AID]=3002)
Begin
INSERT [dbo].Account([AID], Username, Email, [Password]) 
VALUES (3002, 'Oracle', 'oracle@gmail.com', 'user2'); 
End

If Not Exists(select * from [dbo].Account where [AID]=3003)
Begin
INSERT [dbo].Account([AID], Username, Email, [Password]) 
VALUES (3003, 'Java', 'java@gmail.com', 'user3'); 
End

If Not Exists(select * from [dbo].[User_Account] where [AID]=1001)
Begin
INSERT [dbo].[User_Account]([AID], [Seller_Rating]) 
VALUES (1001, 8.1); 
End

If Not Exists(select * from [dbo].[User_Account] where [AID]=1002)
Begin
INSERT [dbo].[User_Account]([AID], [Seller_Rating]) 
VALUES (1002, 9.8); 
End

If Not Exists(select * from [dbo].[User_Account] where [AID]=1003)
Begin
INSERT [dbo].[User_Account]([AID], [Seller_Rating]) 
VALUES (1003, 10); 
End

If Not Exists(select * from [dbo].[Admin_Account] where [AID]=2001)
Begin
INSERT [dbo].[Admin_Account]([AID]) 
VALUES (2001); 
End

If Not Exists(select * from [dbo].[Admin_Account] where [AID]=2002)
Begin
INSERT [dbo].[Admin_Account]([AID]) 
VALUES (2002); 
End

If Not Exists(select * from [dbo].[Admin_Account] where [AID]=2003)
Begin
INSERT [dbo].[Admin_Account]([AID]) 
VALUES (2003); 
End

If Not Exists(select * from [dbo].[Business_Account] where [AID]=3001)
Begin
INSERT [dbo].[Business_Account]([AID]) 
VALUES (3001); 
End

If Not Exists(select * from [dbo].[Business_Account] where [AID]=3002)
Begin
INSERT [dbo].[Business_Account]([AID]) 
VALUES (3002); 
End

If Not Exists(select * from [dbo].[Business_Account] where [AID]=3003)
Begin
INSERT [dbo].[Business_Account]([AID]) 
VALUES (3003); 
End

If Not Exists(select * from [dbo].[Categories] where [ctg_type] = 'Movie')
Begin
INSERT [dbo].[Categories]([ctg_type])
VALUES ('Movie')
END

If Not Exists(select * from [dbo].[Categories] where [ctg_type] = 'Housing')
Begin
INSERT [dbo].[Categories]([ctg_type])
VALUES ('Housing')
END

If Not Exists(select * from [dbo].[Categories] where [ctg_type] = 'Sports')
Begin
INSERT [dbo].[Categories]([ctg_type])
VALUES ('Sports')
END

/* Advertisments*/
If Not Exists(select * from [dbo].[Advertisements] where [AdID] = '9001')
Begin
INSERT [dbo].[Advertisements]([AdID], [ad_description], [price], [title], [clicks], [Create_Date])
VALUES (9001, 'Something', 1099, 'sale of something', 100, CAST(N'1999-02-21' AS Date))
END

If Not Exists(select * from [dbo].[Advertisements] where [AdID] = '9002')
Begin
INSERT [dbo].[Advertisements]([AdID], [ad_description], [price], [title], [clicks], [Create_Date])
VALUES (9002, 'Housing sale in Mandy Lane', 1999999.99, 'Sell House', 1000 , CAST(N'1989-02-21' AS Date))
END

If Not Exists(select * from [dbo].[Advertisements] where [AdID] = '9003')
Begin
INSERT [dbo].[Advertisements]([AdID], [ad_description], [price], [title], [clicks], [Create_Date])
VALUES (9003, 'Sublet housing for summer at Walter Gage', 950, 'Walter Gage sublet', 2, CAST(N'2002-02-22' AS Date))
END

If Not Exists(select * from [dbo].[Create_ads] where [AdID] = 9001)
Begin
INSERT [dbo].[Create_ads]([AdID], [AID])
VALUES (9001, 3001)
END

If Not Exists(select * from [dbo].[Create_ads] where [AdID] = 9002)
Begin
INSERT [dbo].[Create_ads]([AdID], [AID])
VALUES (9002, 3002)
END

If Not Exists(select * from [dbo].[Create_ads] where [AdID] = 9003)
Begin
INSERT [dbo].[Create_ads]([AdID], [AID])
VALUES (9003, 3003)
END

If Not Exists(select * from [dbo].[Ad_category] where [AdID] = 9001 and [ctg_type] = 'Movie')
Begin
INSERT [dbo].[Ad_category]([AdID], [ctg_type])
VALUES (9001, 'Movie')
END

If Not Exists(select * from [dbo].[Ad_category] where [AdID] = 9002 and [ctg_type] = 'Housing')
Begin
INSERT [dbo].[Ad_category]([AdID], [ctg_type])
VALUES (9002, 'Housing')
END

If Not Exists(select * from [dbo].[Ad_category] where [AdID] = 9003 and [ctg_type] = 'Movie')
Begin
INSERT [dbo].[Ad_category]([AdID], [ctg_type])
VALUES (9003, 'Movie')
END

If Not Exists(select * from [dbo].[User_category] where [AID] = 1001 and [ctg_type] = 'Movie')
Begin
INSERT [dbo].[User_category]([AID], [ctg_type], [percentage])
VALUES (1001, 'Movie', 90.1)
END

If Not Exists(select * from [dbo].[User_category] where [AID] = 1002 and [ctg_type] = 'Housing')
Begin
INSERT [dbo].[User_category]([AID], [ctg_type], [percentage])
VALUES (1002, 'Housing', 100)
END

If Not Exists(select * from [dbo].[User_category] where [AID] = 1003 and [ctg_type] = 'Sports')
Begin
INSERT [dbo].[User_category]([AID], [ctg_type], [percentage])
VALUES (1003, 'Sports', 0)
END

If Not Exists(select * from [dbo].[Post_category] where [PID] = 1 and [ctg_type] = 'Movie')
Begin
INSERT [dbo].[Post_category]([PID], [ctg_type])
VALUES (1, 'Movie')
END

If Not Exists(select * from [dbo].[Post_category] where [PID] = 1 and [ctg_type] = 'Sports')
Begin
INSERT [dbo].[Post_category]([PID], [ctg_type])
VALUES (1, 'Sports')
END

If Not Exists(select * from [dbo].[Post_category] where [PID] = 1 and [ctg_type] = 'Housing')
Begin
INSERT [dbo].[Post_category]([PID], [ctg_type])
VALUES (1, 'Housing')
END

If Not Exists(select * from [dbo].[Post_category] where [PID] = 9 and [ctg_type] = 'Housing')
Begin
INSERT [dbo].[Post_category]([PID], [ctg_type])
VALUES (9, 'Housing')
END

If Not Exists(select * from [dbo].[Post_category] where [PID] = 3 and [ctg_type] = 'Sports')
Begin
INSERT [dbo].[Post_category]([PID], [ctg_type])
VALUES (3, 'Sports')
END

If Not Exists(select * from [dbo].[Post_category] where [PID] = 7 and [ctg_type] = 'Housing')
Begin
INSERT [dbo].[Post_category]([PID], [ctg_type])
VALUES (7, 'Housing')
END

If Not Exists(select * from [dbo].[Post_category] where [PID] = 8 and [ctg_type] = 'Housing')
Begin
INSERT [dbo].[Post_category]([PID], [ctg_type])
VALUES (8, 'Housing')
END

If Not Exists(select * from [dbo].[Post_category] where [PID] = 6 and [ctg_type] = 'Sports')
Begin
INSERT [dbo].[Post_category]([PID], [ctg_type])
VALUES (6, 'Sports')
END


/* Comment*/
If Not Exists(select * from [dbo].Comment where CID=1)
Begin
INSERT [dbo].Comment(CID, [Comment_Body], [Creator_UID], [PID]) 
VALUES (1, 'a Test comment', 1001, 1); 
End

If Not Exists(select * from [dbo].Comment where CID=2)
Begin
INSERT [dbo].Comment(CID, [Comment_Body], [Creator_UID], [PID]) 
VALUES (2, 'a second Test comment', 1002, 2); 
End

If Not Exists(select * from [dbo].Comment where CID=3)
Begin
INSERT [dbo].Comment(CID, [Comment_Body], [Creator_UID], [PID]) 
VALUES (3, 'a thrid Test comment', 1003, 3); 
End

If Not Exists(select * from [dbo].Has_Group_Post where GID=1111 AND PID=9)
Begin
INSERT [dbo].Has_Group_Post([GID],[PID]) 
VALUES (1111, 9); 
End

If Not Exists(select * from [dbo].Has_Group_Post where GID=2222 AND PID=6)
Begin
INSERT [dbo].Has_Group_Post([GID],[PID]) 
VALUES (2222, 6); 
End

If Not Exists(select * from [dbo].Has_Group_Post where GID=3333 AND PID=2)
Begin
INSERT [dbo].Has_Group_Post([GID],[PID]) 
VALUES (3333, 2); 
End