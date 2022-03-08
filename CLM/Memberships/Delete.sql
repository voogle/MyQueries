GO
-- Select rows from a Table or View '[TableOrViewName]' in schema '[dbo]'
SELECT * FROM [Lawmingo_ClmDb].[dbo].[Memberships]
WHERE CreatedBy = '67754278-596b-4e53-866d-29bcb9e03cdc'
ORDER BY Created desc
GO


delete from [Lawmingo_ClmDb].[dbo].[Memberships]
WHERE id = 'aac77b67-a332-4e73-8d9d-ca8453a996dd'