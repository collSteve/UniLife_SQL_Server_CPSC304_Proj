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