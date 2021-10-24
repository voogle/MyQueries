DECLARE @PRICE INT , @START DATETIME  , @END DATETIME , @TYPE INT, @WALLET INT

SET @START = '2021-06-22 00:00:00.00' --START DATE
SET @END = '2021-07-22 23:59:00.00' --END DATE


SET @PRICE =1 -- FREE
SET @TYPE = 2 --SMART/TEMPLATE/ALL
SET @WALLET = 0 --WALLET


-- SELECT COUNT(UC.UserContractID) COUNT , SUM(PL.Amount) SUM
--   FROM [lawmingo_DB].[PsmUser].[UserContracts] UC

--   INNER JOIN [Contract] C  ON UC.[ContractID]   = C.[ContractID]
--     LEFT JOIN [lawmingo_DB].[PsmUser].[PaymentLogs] PL ON [UC].[UserContractID] = PL.UserContractID

--   WHERE ParentID IS NULL
  
--     AND ((@PRICE = 0 AND PL.PaymentLogID IS NULL) OR (@PRICE = 1 AND PL.IsSuccessful = 1 AND PL.Amount > 0 AND (PL.Wallet = @WALLET) ))
--     AND UC.[Time] > @START
--     AND UC.[Time] < @END
--     AND (@TYPE = 2 OR C.[Type] = @TYPE)


-- SELECT COUNT(CR.ConsultationRequestID) , SUM(Amount) Consultations
--   FROM [lawmingo_DB].[PsmUser].[ConsultationRequests] CR
--       LEFT JOIN [lawmingo_DB].[PsmUser].[PaymentLogs] PL ON CR.[OrderID] = PL.ConsultationOrderID

--       WHERE Amount IS NOT NULL AND PL.IsSuccessful = 1
--         AND CR.[Time] > @START
--         AND CR.[Time] < @END

select count(PaymentLogid) as Total  , sum(Amount) PaidContracts
from [lawmingo_DB].[PsmUser].[PaymentLogs] pl
      WHERE Amount IS NOT NULL AND PL.IsSuccessful = 1 and ConsultationOrderID is NULL AND Wallet = 0
        AND pl.[Time] >= @START
        AND pl.[Time] <= @END


SELECT COUNT(UserContractID) as FreeDownload from  [lawmingo_DB].[PsmUser].UserContracts uc
      JOIN  [lawmingo_DB].[PsmUser].Contract c on c.ContractID = uc.ContractID
            WHERE c.Price = 0 AND (Content is NOT NULL OR Word is not null)
                  AND uc.[Time] >= @START
                  AND uc.[Time] <= @END

select count(PaymentLogid)  , sum(Amount) Consultations
from [lawmingo_DB].[PsmUser].[PaymentLogs] pl
      WHERE Amount IS NOT NULL AND PL.IsSuccessful = 1 and ConsultationOrderID is not null AND Wallet = 0
        AND pl.[Time] >= @START
        AND pl.[Time] <= @END

 
        
select sum(Amount) TotalSale
from [lawmingo_DB].[PsmUser].[PaymentLogs] pl
      WHERE Amount IS NOT NULL AND PL.IsSuccessful = 1 AND Wallet = 0
        AND pl.[Time] >= @START
        AND pl.[Time] <= @END

 
select COUNT(Id) NewUsers from [lawmingo_DB].[PsmUser].[AspNetUsers] u
      WHERE 
         u.Register >= @START
        AND u.Register <= @END

