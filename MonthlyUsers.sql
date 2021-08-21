
SELECT 
  COUNT(MAIN.ID)
FROM (SELECT *
  FROM [lawmingo_DB].[PsmUser].[AspNetUsers]
  WHERE Register > '2021-03-20 00:00:00.00'
  AND Register < '2021-04-21 00:00:00.00' AND PhoneNumberConfirmed = 1 
--   AND LastLogin IS NOT NULL
) MAIN