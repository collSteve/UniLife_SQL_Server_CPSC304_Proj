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

/* Steve */
If Not Exists(select * from [dbo].Account where [AID]=1)
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

/* Post */
If Not Exists(select * from [dbo].Post where [PID]=1)
If Not Exists(select * from [dbo].Post where [PID]=1)
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
If Not Exists(select * from [dbo].[CityCode] where [City]='Vancouver')
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
