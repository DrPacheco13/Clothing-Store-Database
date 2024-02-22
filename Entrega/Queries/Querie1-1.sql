USE ClothingStore;
GO

SELECT
    SUM(dbo.RegistoVenda.TotalPagar) AS Total
FROM
    dbo.RegistoVenda
WHERE
    DAY(dbo.RegistoVenda.DataVenda) = DAY(DATEADD(DAY,-1,GETDATE()))