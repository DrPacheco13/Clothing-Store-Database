USE ClothingStore;
GO

CREATE PROCEDURE CalcularTotalPagar
AS
BEGIN
    UPDATE dbo.RegistoVenda
    SET TotalPagar = t.Total
    FROM (
        SELECT
            dbo.Peca.IdRegistoVenda AS IdRegistoVenda,
            SUM(dbo.Artigo.Preco) AS Total
        FROM
            dbo.Artigo
            JOIN dbo.Peca ON dbo.Artigo.IdArtigo = dbo.Peca.IdArtigo
        GROUP BY
            dbo.Peca.IdRegistoVenda
    ) AS t
    WHERE dbo.RegistoVenda.IdRegistoVenda = t.IdRegistoVenda;
END;