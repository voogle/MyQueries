
  SELECT TOP (10000) [lawmingo_DB].[PsmUser].[UserContracts].[UserContractID],   
         [lawmingo_DB].[PsmUser].[UserContracts].[ApplicationUserId],
		 [lawmingo_DB].[PsmUser].[UserContracts].[Time],
		 [lawmingo_DB].[PsmUser].[UserContracts].[status],
		 [lawmingo_DB].[PsmUser].[AspNetUsers].[PhoneNumber],
		 [lawmingo_DB].[PsmUser].[Contract].[Price],
		 [lawmingo_DB].[PsmUser].[Contract].[Name],
		 [lawmingo_DB].[PsmUser].[PaymentLogs].[IsSuccessful]
    		 	
FROM (([lawmingo_DB].[PsmUser].[UserContracts]
INNER JOIN [lawmingo_DB].[PsmUser].[AspNetUsers] ON [lawmingo_DB].[PsmUser].[UserContracts].[ApplicationUserId] =[lawmingo_DB].[PsmUser].[AspNetUsers].[Id])
INNER JOIN [lawmingo_DB].[PsmUser].[Contract]    ON [lawmingo_DB].[PsmUser].[UserContracts].[ContractID]   = [lawmingo_DB].[PsmUser].[Contract].[ContractID])
INNER JOIN [lawmingo_DB].[PsmUser].[PaymentLogs] ON [lawmingo_DB].[PsmUser].[UserContracts].[UserContractID] =  [lawmingo_DB].[PsmUser].[PaymentLogs].UserContractID

