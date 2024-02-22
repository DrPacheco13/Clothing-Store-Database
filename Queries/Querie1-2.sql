USE ClothingStore;
GO

SELECT
    SUM(dbo.RegistoVenda.TotalPagar) AS Total
FROM
    dbo.RegistoVenda
WHERE
    DATEPART(WEEK, dbo.RegistoVenda.DataVenda) = DATEPART(WEEK, DATEADD(WEEK, -1, GETDATE()));