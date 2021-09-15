
-- Add a Contacts =============================================================================================================================================

INSERT INTO [Lawmingo_AspNetIdentityDb].[dbo].[Contacts]
(  [Id],[UserContactId],[CreatedBy],Created)
VALUES
( 
 NEWID() , 'a6d562a6-93a3-490b-b38c-68696b40d322', '6a4bec4a-6526-4e9d-8302-00131186462c' , '2021-08-24 02:30:14.1872181'
)

SELECT * FROM [Lawmingo_AspNetIdentityDb].[dbo].[Contacts]
  WHERE CreatedBy ='6a4bec4a-6526-4e9d-8302-00131186462c' and UserContactId ='a6d562a6-93a3-490b-b38c-68696b40d322'

DELETE FROM [Lawmingo_AspNetIdentityDb].[dbo].[Contacts]
  WHERE CreatedBy ='6a4bec4a-6526-4e9d-8302-00131186462c' and UserContactId ='a6d562a6-93a3-490b-b38c-68696b40d322'

-- Add a Memberships =============================================================================================================================================

INSERT INTO [Lawmingo_ClmDb].[dbo].[Memberships]
(  [Id],[UserId],[CreatedBy] , [Position],[Created],[SignRight],[Mobile],[NationalCode],Approved,ApproveTime,Name
)
VALUES
( 
 NEWID() , '056a5259-1bf1-4dcf-a9fc-04aaa95bfcac', '67754278-596b-4e53-866d-29bcb9e03cdc' , 'عضو هیئت مدیره' , '2021-08-24 02:30:14.1872181' , 1 , '09124941349' , '0060663431' , 0 , '2021-08-24 02:30:14.1872181' , 'میلاد شجاعی'
)

SELECT * from [Lawmingo_ClmDb].[dbo].[Memberships] WHERE
 CreatedBy ='6a4bec4a-6526-4e9d-8302-00131186462c' 

DELETE from [Lawmingo_ClmDb].[dbo].[Memberships] WHERE
 CreatedBy ='6a4bec4a-6526-4e9d-8302-00131186462c' and UserId = 'a6d562a6-93a3-490b-b38c-68696b40d322'