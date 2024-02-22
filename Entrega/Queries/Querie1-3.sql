USE ClothingStore;
GO

SELECT
    SUM(dbo.RegistoVenda.TotalPagar) AS Total
FROM
    dbo.RegistoVenda
WHERE
    MONTH(CAST(dbo.RegistoVenda.DataVenda AS DATE)) = MONTH(CAST(DATEADD(MONTH,-1,GETDATE()) AS DATE))