DECLARE @PRICE INT , @START DATETIME  , @END DATETIME , @TYPE INT, @WALLET INT

SET @START = '2021-04-21 00:00:00.00' --START DATE
SET @END = '2021-05-21 00:00:00.00' --END DATE


update U
SET AffiliateID = null
from [lawmingo_DB].[PsmUser].[AspNetUsers] U
WHERE id IN
(
SELECT ApplicationUserId from
    (SELECT  ApplicationUserId, SUM(Amount) Total
    FROM [lawmingo_DB].[PsmUser].[PaymentLogs] PL

    WHERE IsSuccessful = 1  
        AND Wallet = 1

    GROUP by ApplicationUserId
        -- AND PL.[Time] >= @START
        -- AND PL.[Time] <= @END
    ) Main
    WHERE Total <=0
)


-- (
-- SELECT ApplicationUserId , Total , AffiliateID from
--     (SELECT  ApplicationUserId , AffiliateID, SUM(Amount) Total
--     FROM [lawmingo_DB].[PsmUser].[PaymentLogs] PL
--         JOIN [lawmingo_DB].[PsmUser].[AspNetUsers] u on u.Id = pl.ApplicationUserId
--     WHERE IsSuccessful = 1  
--         AND Wallet = 1

--     GROUP by ApplicationUserId , AffiliateID
--     ) Main
--     WHERE Total >0
-- )


-- update [lawmingo_DB].[PsmUser].[PaymentLogs] 
-- SET Amount = 2000000
--     WHERE IsSuccessful = 1  
--         AND Wallet = 1
--             and Amount = 5000000