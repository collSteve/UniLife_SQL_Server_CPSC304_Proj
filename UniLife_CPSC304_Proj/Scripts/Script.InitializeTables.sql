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
