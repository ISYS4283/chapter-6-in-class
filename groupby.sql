--SELECT DISTINCT [Email]
--  FROM [UA_HALLUX].[dbo].[Customer]

--SELECT [Email]
--  FROM [UA_HALLUX].[dbo].[Customer]
--  GROUP BY email


/****** Script for SelectTopNRows command from SSMS  ******/
SELECT --(5001 - 4860) DISTINCT
      --[First_Name]
      --,[Last_Name]
      [Email], COUNT([Email]) AS 'count_email'
  FROM [UA_HALLUX].[dbo].[Customer]
  GROUP BY email
  HAVING ( COUNT([Email]) > 1 )
  ORDER BY count_email DESC
  --WHERE EMAIL = 'Aguilar2885@juno.com'
