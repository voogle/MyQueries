SELECT TOP (10000) [ProductID]
      ,[ProductName]
      ,[ProductSecondName]
      ,c.[CategoryID]
      ,CONCAT(C4.[CategoryName] , ' | ' , C3.[CategoryName], ' | ' , C2.[CategoryName], ' | ' , C.[CategoryName]) 
      ,[Image]
      ,[ImageHover]
      ,[Thumbnail]
      ,t.[ProductTypeID]
      ,t.[ProductTypeName]
      ,b.[BrandID]
      ,b.[BrandTitle]
      ,b.[EnglishTitle] as "BrandEnglishTitle"
      ,b.[Description] as "BrandDescription"
      ,[ProductCode]
      ,[ProductAddDateTime]
      ,[Weight]
      ,[Tags]
      ,[Cataloge]
      ,[ProductMetaKeyword]
      ,[ProductMetaDescription]
      ,p.[Summery]
      ,p.[Description]

  FROM [Nikoopay].[dbo].[Product] P

  left JOIN [Nikoopay].[dbo].[Brand] B on b.BrandID = p.BrandID

  JOIN [Nikoopay].[dbo].[Category] C on c.CategoryID = p.CategoryID
    left JOIN [Nikoopay].[dbo].[Category] C2 on c2.CategoryID = c.ParentID
        left JOIN [Nikoopay].[dbo].[Category] C3 on c3.CategoryID = c2.ParentID
         left JOIN [Nikoopay].[dbo].[Category] C4 on c4.CategoryID = c3.ParentID

  left JOIN [Nikoopay].[dbo].[ProductType] T on t.ProductTypeID = p.ProductTypeID

  where IsVisible = 1