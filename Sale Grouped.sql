DECLARE @PRICE INT , @START DATETIME  , @END DATETIME , @TYPE INT, @WALLET INT

SET @START = '2020-03-20 00:00:00.00' --START DATE
SET @END = '2021-03-20 23:59:59.00' --END DATE


SET @PRICE =1 -- FREE
SET @TYPE = 2 --SMART/TEMPLATE/ALL
SET @WALLET = 0 --WALLET

SELECT SUM(Amount) Total , COUNT(C.ContractID) 'Count' , C.ContractID ID , C.Name Title, C.Price LastPrice
  FROM [lawmingo_DB].[PsmUser].[PaymentLogs] PL
  
    JOIN [lawmingo_DB].[PsmUser].[UserContracts] UC ON UC.UserContractID = PL.UserContractID
    JOIN [lawmingo_DB].[PsmUser].[Contract] C ON C.ContractID = UC.ContractID
      
      WHERE Wallet = 0 AND Amount IS NOT NULL AND Amount > 0 AND  PL.IsSuccessful = 1 and ConsultationOrderID is NULL
        AND pl.[Time] >= @START
        AND pl.[Time] <= @END
        GROUP BY C.ContractID ,C.Name , C.Price

SELECT COUNT(*) FROM [lawmingo_DB].[PsmUser].[Contract]
