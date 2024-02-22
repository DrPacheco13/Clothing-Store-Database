USE ClothingStore;
GO

SELECT
    dbo.Artigo.*
FROM
    (SELECT
        dbo.RegistoVenda.IdRegistoVenda
    FROM
        dbo.RegistoVenda
    WHERE
        DAY(dbo.RegistoVenda.DataVenda) = DAY(DATEADD(DAY,-1,GETDATE()))
    GROUP BY
        dbo.RegistoVenda.IdRegistoVenda
    ) AS t , dbo.Peca, dbo.Artigo
WHERE
    t.IdRegistoVenda = dbo.Peca.IdRegistoVenda AND dbo.Peca.IdArtigo = dbo.Artigo.IdArtigo