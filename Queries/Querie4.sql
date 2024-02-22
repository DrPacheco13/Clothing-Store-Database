USE ClothingStore;
GO

SELECT DISTINCT TOP 1
    dbo.Artigo.*,
    COUNT(dbo.Peca.IdRegistoVenda) AS Total
FROM
    dbo.Artigo,
    dbo.Peca
WHERE
    dbo.Artigo.IdArtigo = dbo.Peca.IdArtigo 
GROUP BY
    dbo.Artigo.IdArtigo,
    dbo.Artigo.NomeArtigo,
    dbo.Artigo.MarcaArtigo,
    dbo.Artigo.Modelo,
    dbo.Artigo.Tamanho,
    dbo.Artigo.Preco,
    dbo.Artigo.Cor
ORDER BY 
    Total DESC

