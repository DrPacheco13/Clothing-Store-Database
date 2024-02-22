USE ClothingStore;
GO

CREATE VIEW ArtigosSemDefeito
AS 
    SELECT 
        dbo.Artigo.IdArtigo,
        dbo.Artigo.NomeArtigo,
        dbo.Artigo.MarcaArtigo,
        dbo.Artigo.Modelo,
        dbo.Artigo.Tamanho,
        dbo.Artigo.Preco,
        dbo.Artigo.Cor
    FROM
        dbo.Artigo INNER JOIN
        dbo.Peca ON dbo.Artigo.IdArtigo = dbo.Peca.IdArtigo 
    WHERE
        dbo.Peca.DataDefeito IS NULL
;
GO

CREATE VIEW ArtigosComDefeito
AS 
    SELECT 
        dbo.Artigo.IdArtigo,
        dbo.Artigo.NomeArtigo,
        dbo.Artigo.MarcaArtigo,
        dbo.Artigo.Modelo,
        dbo.Artigo.Tamanho,
        dbo.Artigo.Preco,
        dbo.Artigo.Cor,
        dbo.Peca.DataDefeito
    FROM
        dbo.Artigo INNER JOIN
        dbo.Peca ON dbo.Artigo.IdArtigo = dbo.Peca.IdArtigo 
    WHERE
        dbo.Peca.DataDefeito IS NOT NULL
;
GO

CREATE VIEW RegistosVenda
AS 
    SELECT 
        dbo.RegistoVenda.IdRegistoVenda,
        dbo.Cliente.NomeCliente,
        dbo.Funcionario.NomeFuncionario,
        dbo.RegistoVenda.DataVenda,
        dbo.RegistoVenda.Obs,
        dbo.RegistoVenda.TotalPagar
    FROM
        dbo.RegistoVenda INNER JOIN
        dbo.Cliente ON dbo.RegistoVenda.NIF = dbo.Cliente.NIF INNER JOIN
        dbo.Funcionario ON dbo.RegistoVenda.IdFuncionario = dbo.Funcionario.IdFuncionario
;
GO

CREATE VIEW RegistosVendaDetalhes
AS 
    SELECT 
        dbo.RegistoVenda.IdRegistoVenda,
        dbo.Artigo.IdArtigo,
        dbo.Artigo.NomeArtigo,
        dbo.Artigo.MarcaArtigo,
        dbo.Artigo.Modelo,
        dbo.Artigo.Tamanho,
        dbo.Artigo.Preco,
        dbo.Artigo.Cor,
        dbo.RegistoVenda.DataVenda,
        dbo.RegistoVenda.TotalPagar AS TotalRegistoVenda
    FROM
        dbo.RegistoVenda INNER JOIN
        dbo.Peca ON dbo.RegistoVenda.IdRegistoVenda = dbo.Peca.IdRegistoVenda INNER JOIN
        dbo.Artigo ON dbo.Peca.IdArtigo = dbo.Artigo.IdArtigo
;
GO

CREATE VIEW ArtigosNoEscaparate
AS 
    SELECT 
        dbo.Escaparate.IdEscaparate,
        dbo.Artigo.IdArtigo,
        dbo.Artigo.NomeArtigo,
        dbo.Artigo.MarcaArtigo,
        dbo.Artigo.Modelo,
        dbo.Artigo.Tamanho,
        dbo.Artigo.Preco,
        dbo.Artigo.Cor
    FROM
        dbo.Escaparate INNER JOIN
        dbo.Peca ON dbo.Escaparate.IdEscaparate = dbo.Peca.IdEscaparate INNER JOIN
        dbo.Artigo ON dbo.Peca.IdArtigo = dbo.Artigo.IdArtigo
;
GO

CREATE VIEW EscaparatesPorSeccao
AS 
    SELECT 
        dbo.Seccao.IdSeccao,
        dbo.Seccao.Nome,
        dbo.Escaparate.IdEscaparate
    FROM
        dbo.Seccao INNER JOIN
        dbo.Escaparate ON dbo.Seccao.IdSeccao = dbo.Escaparate.IdSeccao
;
GO