DECLARE @DOCID NVARCHAR(MAX)
SET @DOCID ='ccaf463e-4d08-4338-a30e-72caf5b47213'

SELECT * from [Lawmingo_ClmDb].[dbo].[Documents]
WHERE Id = @DOCID

select * from [Lawmingo_ClmDb].[dbo].[DocumentLogs]
WHERE DocumentId = @DOCID
order by Created asc

UPDATE  [Lawmingo_ClmDb].[dbo].[Documents]
SET [File] ='Documents/f2e29756-92b9-417d-88f8-4ed3b5fceadf.pdf' , [State] = 0
WHERE Id = @DOCID


UPDATE  [Lawmingo_ClmDb].[dbo].[DocumentWorkflows]
SET SignedTime = null , Seen = null , ApproveTime = null , Turn = 0 , RejectTime = null , DigitalSignature = null , Filled = null
WHERE DocumentId = @DOCID