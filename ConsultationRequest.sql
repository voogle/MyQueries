DECLARE @START DATETIME  , @END DATETIME , @WALLET INT

SET @START = '2021-04-21 00:00:00.00' --START DATE
SET @END = '2021-05-21 00:00:00.00' --END DATE

SELECT COUNT(CR.ConsultationRequestID) , SUM(Amount)
  FROM [lawmingo_DB].[PsmUser].[ConsultationRequests] CR
      LEFT JOIN [lawmingo_DB].[PsmUser].[PaymentLogs] PL ON CR.[OrderID] = PL.ConsultationOrderID

      WHERE Amount IS NOT NULL AND PL.IsSuccessful = 1
        AND CR.[Time] > @START
        AND CR.[Time] < @END
