declare @Refrence NVARCHAR(MAX) , @AffiliateID  NVARCHAR(MAX) , @DateTime NVARCHAR , @PhoneNumber NVARCHAR(MAX) , @RefrenceID NVARCHAR
DECLARE @AffectedId NVARCHAR

SELECT 

@AffiliateID = '32a5a823-c76f-4b34-b4be-802d780021f0',
 @Refrence = 'Noafarin',
  @DateTime = '2020-10-31 11:40:34.4306135',
   @PhoneNumber = '09125435102',
    @RefrenceID = '11-54-25-6671'

-- update [lawmingo_DB].[PsmUser].[AspNetUsers]
--     SET 

--     AffiliateID = @AffiliateID ,
--      Refrence = @Refrence ,
--       RefrenceID = @RefrenceID
--     OUTPUT  inserted.Id
--     WHERE PhoneNumber = @PhoneNumber

select * from [lawmingo_DB].[PsmUser].[AspNetUsers]
WHERE  UserName= @PhoneNumber

-- Select rows from a Table or View '[PaymentLogs]' in schema '[dbo]'

SELECT Amount , Name , pl.[Time] FROM [lawmingo_DB].[PsmUser].[PaymentLogs] pl
left join [lawmingo_DB].[PsmUser].[UserContracts] uc on uc.UserContractID = pl.UserContractID
left join [lawmingo_DB].[PsmUser].[Contract] c on c.ContractID = uc.ContractID
WHERE  pl.ApplicationUserId= '2e1f5f6e-9b13-4ee7-8ace-0375d1b92e96'
GO

-- update PaymentLogs
-- set Amount = 2000000
-- WHERE ApplicationUserId = '2e1f5f6asdasdasde-9b13-4ee7-8ace-0375d1b92e96'

-- INSERT INTO PaymentLogs
-- (
--  Amount , ApplicationUserId , Wallet , [Time] , IsSuccessful
-- )
-- VALUES
-- (
--  2000000 , 'e96aebdd-2727-492e-837e-55f9adf7455f' , 1 , '2021-09-15 09:43:40.9955725' , 1
-- )
