
  select * from [Lawmingo_ClmDb].[dbo].[Documents]
  -- WHERE [Id]  = '7d9d93d2-b984-455e-9a0d-1f7ecb30b8d0'
  ORDER BY Created DESC

-- Update rows in table '[TableName]' in schema '[dbo]'
UPDATE  [Lawmingo_ClmDb].[dbo].[Documents]
SET FilePath = 'C:\inetpub\sites\otp\wwwroot\' + REPLACE([File]  ,'/' , '\')
WHERE FilePath like '%CLM_Backend%'


GO
-- Select rows from a Table or View '[TableOrViewName]' in schema '[dbo]'
SELECT * FROM [Lawmingo_ClmDb].[dbo].[DocumentLogs]
WHERE DocumentId = '7d9d93d2-b984-455e-9a0d-1f7ecb30b8d0'
ORDER BY Created desc
GO

  -- DELETE from  [Lawmingo_ClmDb].[dbo].[Documents]
  -- WHERE Created > '2021-09-19 22:01:06.9313632' and IsTemplate = 0

