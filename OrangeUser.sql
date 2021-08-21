SELECT UserName , Email
  FROM [orangebo_db].[dbo].[aspnet_Membership] m 
  JOIN [orangebo_db].[dbo].[aspnet_Users] u on u.UserId = m.UserId
  where m.Email = 'Dr.vahidyardel@gmail.com'