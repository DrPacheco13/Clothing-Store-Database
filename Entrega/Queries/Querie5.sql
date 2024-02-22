USE ClothingStore;
GO

SELECT
    dbo.Artigo.*,
    COUNT(dbo.Peca.IdArtigo) AS TotalPecasDefeituosas
FROM
    dbo.Peca,
    dbo.Artigo
WHERE
    DATEPART(WEEK, dbo.Peca.DataDefeito) = DATEPART(WEEK, DATEADD(WEEK, -1, '2023-06-04')) AND dbo.Peca.IdArtigo = dbo.Artigo.IdArtigo
GROUP BY
    dbo.Artigo.IdArtigo,
    dbo.Artigo.NomeArtigo,
    dbo.Artigo.MarcaArtigo,
    dbo.Artigo.Modelo,
    dbo.Artigo.Tamanho,
    dbo.Artigo.Preco,
    dbo.Artigo.Cor