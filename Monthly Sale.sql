DECLARE @PRICE INT , @START DATETIME  , @END DATETIME , @TYPE INT, @WALLET INT

SET @START = '2021-06-23 00:00:00.00' --START DATE
SET @END = '2021-07-23 23:59:00.00' --END DATE

SELECT *
  FROM [lawmingo_DB].[PsmUser].[PaymentLogs] PL

  WHERE IsSuccessful = 1  
    AND Wallet = 0
    AND Amount > 0
    -- AND ConsultationOrderID is not NULL
        AND PL.[Time] >= @START
        AND PL.[Time] <= @END
