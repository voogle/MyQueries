select *
from [Lawmingo_AspNetIdentityDb].[dbo].[AspNetUsers]
  -- where PhoneNumber = '09026001395'  or UserName  ='09026001395' or NormalizedUserName ='09026001395'
   where Email like N'%v.t%'
--WHERE  family is Not null
-- WHERE Id = '6a4bec4a-6526-4e9d-8302-00131186462c'
order by RegisterDate desc

update  [Lawmingo_AspNetIdentityDb].[dbo].[AspNetUsers]
  set isv = NULL
  --set Avatar ='http://185.8.175.213:26500/Users/Avatars/e7f92627-6261-4631-9d73-96f5a3ee4f13.png'
where Id = '6a4bec4a-6526-4e9d-8302-00131186462c'
  
delete from  [Lawmingo_AspNetIdentityDb].[dbo].[AspNetUsers]
  WHERE id= 'aa'