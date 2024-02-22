USE ClothingStore;
GO
SELECT
    dbo.Funcionario.IdFuncionario,
    dbo.Funcionario.NomeFuncionario,
    t.Total
FROM
    (SELECT
        dbo.RegistoVenda.IdFuncionario,
        SUM(dbo.RegistoVenda.TotalPagar) AS Total
    FROM
        dbo.RegistoVenda
    WHERE
        MONTH(CAST(dbo.RegistoVenda.DataVenda AS DATE)) = MONTH(CAST(DATEADD(MONTH,-1,GETDATE()) AS DATE))
    GROUP BY
        dbo.RegistoVenda.IdFuncionario
    ) AS t , dbo.Funcionario
WHERE 
    t.IdFuncionario = dbo.Funcionario.IdFuncionario
ORDER BY t.Total DESC