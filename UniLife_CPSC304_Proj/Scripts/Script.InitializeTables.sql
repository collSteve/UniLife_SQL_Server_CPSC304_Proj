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

/* File */
/*
If Not Exists(select * from [dbo].[File] where [FID]=1)
Begin
INSERT [dbo].[File]([FID], [File_Location], [File_Type], PID) 
VALUES (1, 'https://cdn.pixabay.com/photo/2021/08/25/20/42/field-6574455__340.jpg', 'Image', ); 
End

If Not Exists(select * from [dbo].[File] where [FID]=2)
Begin
INSERT [dbo].[File]([FID], [File_Location], [File_Type], PID) 
VALUES (2, 'https://www.gettyimages.ca/gi-resources/images/500px/983794168.jpg', 'Image', ); 
End

If Not Exists(select * from [dbo].[File] where [FID]=3)
Begin
INSERT [dbo].[File]([FID], [File_Location], [File_Type], PID) 
VALUES (3, 'https://cdn.pixabay.com/photo/2018/08/14/13/23/ocean-3605547__340.jpg', 'Image', ); 
End
*/


/* Steve */

If Not Exists(select * from [dbo].Post where [PID]=1)
Begin
INSERT [dbo].Post([PID], [Create_Date], [Title], [Post_Body], [Num_Likes], [Num_Dislikes], [Creator_UID]) 
VALUES (1, CAST(N'2022-12-03' AS Date), 'My Post Title', 'My Post body', 5, 2, 2); 
End

/* AKM */

If Not Exists(select * from [dbo].Account where [AID]=1001)
Begin
INSERT [dbo].Account([AID], Username, Email, [Password]) 
VALUES (1001, 'Steve', 'wefew@gmail.com', 'My Password'); 
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

If Not Exists(select * from [dbo].Post where [PID]=1)
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

If Not Exists(select * from [dbo].[Advertisements] where [AdID] = '9001')
Begin
INSERT [dbo].[Advertisements]([AdID], [ad_description], [price], [title], [clicks])
VALUES (9001, 'Something', 1099, 'sale of something', 100)
END

If Not Exists(select * from [dbo].[Advertisements] where [AdID] = '9002')
Begin
INSERT [dbo].[Advertisements]([AdID], [ad_description], [price], [title], [clicks])
VALUES (9002, 'Housing sale in Mandy Lane', 1999999.99, 'Sell House', 1000)
END

If Not Exists(select * from [dbo].[Advertisements] where [AdID] = '9003')
Begin
INSERT [dbo].[Advertisements]([AdID], [ad_description], [price], [title], [clicks])
VALUES (9003, 'Sublet housing for summer at Walter Gage', 950, 'Walter Gage sublet', 2)
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
INSERT [dbo].[User_category]([AdID], [ctg_type], [percentage])
VALUES (1001, 'Movie', 90.1)
END

If Not Exists(select * from [dbo].[User_category] where [AID] = 1002 and [ctg_type] = 'Housing')
Begin
INSERT [dbo].[User_category]([AdID], [ctg_type], [percentage])
VALUES (1002, 'Housing', 100)
END

If Not Exists(select * from [dbo].[User_category] where [AID] = 1003 and [ctg_type] = 'Sports')
Begin
INSERT [dbo].[User_category]([AdID], [ctg_type], [percentage])
VALUES (1003, 'Sports', 0)
END

If Not Exists(select * from [dbo].[Post_category] where [PID] = 1001 and [ctg_type] = 'Movie')
Begin
INSERT [dbo].[Post_category]([PID], [ctg_type])
VALUES (1, 'Movie')
END

If Not Exists(select * from [dbo].[Post_category] where [PID] = 1001 and [ctg_type] = 'Housing')
Begin
INSERT [dbo].[Post_category]([PID], [ctg_type])
VALUES (2, 'Housing')
END

If Not Exists(select * from [dbo].[Post_category] where [PID] = 1001 and [ctg_type] = 'Sports')
Begin
INSERT [dbo].[Post_category]([PID], [ctg_type])
VALUES (3, 'Sports')
END
