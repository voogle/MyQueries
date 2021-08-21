select *
from
   [Lawmingo_AspNetIdentityDb].[dbo].[AspNetUsers]
  -- where PhoneNumber = '09026001395'  or UserName  ='09026001395' or NormalizedUserName ='09026001395'
  -- where UserName like '%09036330386%'
WHERE  family is Not null
order by RegisterDate desc

update    [Lawmingo_AspNetIdentityDb].[dbo].[AspNetUsers]
  set PhoneNumber = '09026001395' , UserName ='09026001395' , NormalizedUserName='09026001395'
  --set Avatar ='http://185.8.175.213:26500/Users/Avatars/e7f92627-6261-4631-9d73-96f5a3ee4f13.png'
  where UserName = '09101757395'
  
  delete [Lawmingo_ClmDb].[dbo].[Memberships]
WHERE userid ='7bbf8aaaaaaaaaaaaaaaaaaaa852-42b1-4a3d-ac68-83cfb8538d3a'

  select * FROM   [Lawmingo_ClmDb].[dbo].[Memberships]

  WHERE UserId ='a6d562a6-93a3-490b-b38c-68696b40d322'

UPDATE [Lawmingo_ClmDb].[dbo].[Memberships]
set userid = '5cc4fbed-8471-4361-ba5a-a949728dd539' , Approved = 1 , DigitalSignature= 'aaaaa'
WHERE id = 'f3620df8-4758-40d7-999d-78bd7528073f'

select * FROM   [Lawmingo_ClmDb].[dbo].[DocumentWorkflows]
WHERE DocumentId ='ed2f8e6a-80e5-4fd8-bd84-535b4d0d9b3e'
order by Created DESC


select * FROM   [Lawmingo_ClmDb].[dbo].[DocumentWorkflows]
WHERE DocumentId ='f6ad45c1-acdb-4ec7-903a-65f9f1adc899'
order by Created DESC


UPDATE  [Lawmingo_ClmDb].[dbo].[DocumentWorkflows]
SET IsLegal = 1
WHERE id ='80740d59-a1df-4f7c-976f-df60da0d0aa5'

  select * from [Lawmingo_ClmDb].[dbo].[DocumentLogs]
WHERE DocumentId ='bd37c1da-4136-4134-823c-81fb463578d2'
order by Created DESC

  select * from [Lawmingo_ClmDb].[dbo].[Documents]
-- WHERE [Id]  = 'f6ad45c1-acdb-4ec7-903a-65f9f1adc899'

  ORDER BY Created DESC
  
select * FROM   [Lawmingo_ClmDb].[dbo].[DocumentWorkflows]
order by Created DESC


UPDATE  [Lawmingo_ClmDb].[dbo].[Documents]
SET [File] ='Documents/2178a723-b1f6-420b-b6b1-57cf74b9df61.pdf'
  where [id] = 'ed2f8e6a-80e5-4fd8-bd84-535b4d0d9b3e'


  select * from [Lawmingo_AspNetIdentityDb].[dbo].[AspNetUsers]