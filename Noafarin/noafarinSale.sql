
select u.RefrenceID , -Amount , pl.[Time] , c.Name from [lawmingo_DB].[PsmUser].[PaymentLogs] pl
join [lawmingo_DB].[PsmUser].[AspNetUsers] u on u.Id = pl.ApplicationUserId
join [lawmingo_DB].[PsmUser].[UserContracts] uc on uc.UserContractID = pl.UserContractID
join [lawmingo_DB].[PsmUser].[Contract] c on c.ContractID = uc.ContractID
WHERE u.RefrenceID is not null AND Amount < 0 and u.RefrenceID <> '55-55-55-5555' and u.Id <> '77455567-e014-4379-9fd0-6b313ed922bc'
order by time desc




SELECT ApplicationUserId ,-Total ,  ceiling(-Total/2000000)  , -Total  , AffiliateID from
    (SELECT  ApplicationUserId , AffiliateID, SUM(Amount) Total
    FROM [lawmingo_DB].[PsmUser].[PaymentLogs] PL
        JOIN [lawmingo_DB].[PsmUser].[AspNetUsers] u on u.Id = pl.ApplicationUserId
    WHERE IsSuccessful = 1  
        AND Wallet = 1 and Amount < 0 and u.RefrenceID <> '55-55-55-5555' and u.Id <> '77455567-e014-4379-9fd0-6b313ed922bc'

    GROUP by ApplicationUserId , AffiliateID
    ) Main
)

-- update [lawmingo_DB].[PsmUser].[PaymentLogs] 
-- SET Amount = 2000000
--     WHERE IsSuccessful = 1  
--         AND Wallet = 1
--             and Amount = 5000000