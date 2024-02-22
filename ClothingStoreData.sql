USE master ;  
GO  
USE ClothingStore ;  
GO

SET IDENTITY_INSERT [dbo].[Artigo] ON 

INSERT [dbo].[Artigo] ([IdArtigo], [NomeArtigo], [MarcaArtigo], [Modelo], [Tamanho], [Preco], [Cor]) VALUES (CAST(0 AS Numeric(5, 0)), N'Camisa', N'Lion of Porches', N'Slim Fit', N'M', CAST(50.00 AS Decimal(6, 2)), N'branco')
INSERT [dbo].[Artigo] ([IdArtigo], [NomeArtigo], [MarcaArtigo], [Modelo], [Tamanho], [Preco], [Cor]) VALUES (CAST(1 AS Numeric(5, 0)), N'Camisa', N'Lion of Porches', N'Regular Fit', N'XL', CAST(50.00 AS Decimal(6, 2)), N'rosa')
INSERT [dbo].[Artigo] ([IdArtigo], [NomeArtigo], [MarcaArtigo], [Modelo], [Tamanho], [Preco], [Cor]) VALUES (CAST(2 AS Numeric(5, 0)), N'Bermudas', N'Lion of Porches', N'Com cinto elastico', N'40', CAST(70.00 AS Decimal(6, 2)), N'beje')
INSERT [dbo].[Artigo] ([IdArtigo], [NomeArtigo], [MarcaArtigo], [Modelo], [Tamanho], [Preco], [Cor]) VALUES (CAST(3 AS Numeric(5, 0)), N'Cardigan', N'Lion of Porches', N'Malha', N'M', CAST(60.00 AS Decimal(6, 2)), N'camel')
INSERT [dbo].[Artigo] ([IdArtigo], [NomeArtigo], [MarcaArtigo], [Modelo], [Tamanho], [Preco], [Cor]) VALUES (CAST(4 AS Numeric(5, 0)), N'Calcas', N'Lion of Porches', N'Estilo pantalona', N'38', CAST(100.00 AS Decimal(6, 2)), N'branco')
INSERT [dbo].[Artigo] ([IdArtigo], [NomeArtigo], [MarcaArtigo], [Modelo], [Tamanho], [Preco], [Cor]) VALUES (CAST(5 AS Numeric(5, 0)), N'Blusao', N'Lion of Porches', N'Corporativo', N'M', CAST(120.00 AS Decimal(6, 2)), N'branco')
INSERT [dbo].[Artigo] ([IdArtigo], [NomeArtigo], [MarcaArtigo], [Modelo], [Tamanho], [Preco], [Cor]) VALUES (CAST(6 AS Numeric(5, 0)), N'Casaco', N'Lion of Porches', N'Tecido tecnico', N'L', CAST(100.00 AS Decimal(6, 2)), N'verde')
INSERT [dbo].[Artigo] ([IdArtigo], [NomeArtigo], [MarcaArtigo], [Modelo], [Tamanho], [Preco], [Cor]) VALUES (CAST(7 AS Numeric(5, 0)), N'Colete_Menino', N'Lion of Porches', N'Reversivel', N'7-8 anos', CAST(60.00 AS Decimal(6, 2)), N'Azul')
INSERT [dbo].[Artigo] ([IdArtigo], [NomeArtigo], [MarcaArtigo], [Modelo], [Tamanho], [Preco], [Cor]) VALUES (CAST(8 AS Numeric(5, 0)), N'T-shirt_Menina', N'Lion of Porches', N'Manga Curta', N'3/4 anos', CAST(30.00 AS Decimal(6, 2)), N'branco')
INSERT [dbo].[Artigo] ([IdArtigo], [NomeArtigo], [MarcaArtigo], [Modelo], [Tamanho], [Preco], [Cor]) VALUES (CAST(9 AS Numeric(5, 0)), N'T-shirt_Menina', N'Lion of Porches', N'3/4 Manga', N'11/12 anos', CAST(40.00 AS Decimal(6, 2)), N'vermelho')
SET IDENTITY_INSERT [dbo].[Artigo] OFF
GO

SET IDENTITY_INSERT [dbo].[Funcionario] ON 

INSERT [dbo].[Funcionario] ([IdFuncionario], [NomeFuncionario], [MoradaFuncionario], [Turno], [NIF], [ContactoFuncionario]) VALUES (CAST(0 AS Numeric(2, 0)), N'Maria Figueiredo', N'Rua do Ferrador N 84 4050-001 Porto', 0, CAST(253664054 AS Numeric(9, 0)), N'+351910000000')
INSERT [dbo].[Funcionario] ([IdFuncionario], [NomeFuncionario], [MoradaFuncionario], [Turno], [NIF], [ContactoFuncionario]) VALUES (CAST(1 AS Numeric(2, 0)), N'Soraia Mavilde', N'Rua do Madeireiro N 95 4100-002 Porto', 1, CAST(253662295 AS Numeric(9, 0)), N'+351910000001')
INSERT [dbo].[Funcionario] ([IdFuncionario], [NomeFuncionario], [MoradaFuncionario], [Turno], [NIF], [ContactoFuncionario]) VALUES (CAST(2 AS Numeric(2, 0)), N'Pedro Fonseca', N'Rua do Pintor N 10 4150-003 Porto', 0, CAST(253663256 AS Numeric(9, 0)), N'+351910000002')
INSERT [dbo].[Funcionario] ([IdFuncionario], [NomeFuncionario], [MoradaFuncionario], [Turno], [NIF], [ContactoFuncionario]) VALUES (CAST(3 AS Numeric(2, 0)), N'Dinis Pedrosa', N'Rua do Eletrecista N 98 4200-004 Porto', 1, CAST(253662403 AS Numeric(9, 0)), N'+351910000003')
INSERT [dbo].[Funcionario] ([IdFuncionario], [NomeFuncionario], [MoradaFuncionario], [Turno], [NIF], [ContactoFuncionario]) VALUES (CAST(4 AS Numeric(2, 0)), N'Manuela Sampaio', N'Rua do  Tratorista  84 4250-005 Porto', 0, CAST(253662004 AS Numeric(9, 0)), N'+351910000004')
INSERT [dbo].[Funcionario] ([IdFuncionario], [NomeFuncionario], [MoradaFuncionario], [Turno], [NIF], [ContactoFuncionario]) VALUES (CAST(5 AS Numeric(2, 0)), N'Nazare Costa', N'Rua do Moleiro N 62 4300-006 Porto', 1, CAST(253661605 AS Numeric(9, 0)), N'+351910000005')
INSERT [dbo].[Funcionario] ([IdFuncionario], [NomeFuncionario], [MoradaFuncionario], [Turno], [NIF], [ContactoFuncionario]) VALUES (CAST(6 AS Numeric(2, 0)), N'Serafina Pessoa', N'Rua do Soldador N 50 4350-007 Porto', 0, CAST(253660980 AS Numeric(9, 0)), N'+351910000006')
INSERT [dbo].[Funcionario] ([IdFuncionario], [NomeFuncionario], [MoradaFuncionario], [Turno], [NIF], [ContactoFuncionario]) VALUES (CAST(7 AS Numeric(2, 0)), N'Juliana Cardoso', N'Rua do Combatentes N 84 4400-008 Porto', 1, CAST(253660445 AS Numeric(9, 0)), N'+351910000007')
INSERT [dbo].[Funcionario] ([IdFuncionario], [NomeFuncionario], [MoradaFuncionario], [Turno], [NIF], [ContactoFuncionario]) VALUES (CAST(8 AS Numeric(2, 0)), N'Nuno Nunes', N'Rua do Cozinheiro N 84 4450-009 Porto', 1, CAST(253659910 AS Numeric(9, 0)), N'+351910000008')
SET IDENTITY_INSERT [dbo].[Funcionario] OFF
GO

SET IDENTITY_INSERT [dbo].[Seccao] ON 

INSERT [dbo].[Seccao] ([IdSeccao], [Nome]) VALUES (CAST(0 AS Numeric(2, 0)), N'Homem')
INSERT [dbo].[Seccao] ([IdSeccao], [Nome]) VALUES (CAST(1 AS Numeric(2, 0)), N'Mulher')
INSERT [dbo].[Seccao] ([IdSeccao], [Nome]) VALUES (CAST(2 AS Numeric(2, 0)), N'Crianca')
SET IDENTITY_INSERT [dbo].[Seccao] OFF
GO

SET IDENTITY_INSERT [dbo].[Escaparate] ON 

INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(1 AS Numeric(2, 0)), CAST(1 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(2 AS Numeric(2, 0)), CAST(1 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(3 AS Numeric(2, 0)), CAST(1 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(4 AS Numeric(2, 0)), CAST(1 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(5 AS Numeric(2, 0)), CAST(1 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(6 AS Numeric(2, 0)), CAST(1 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(7 AS Numeric(2, 0)), CAST(1 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(8 AS Numeric(2, 0)), CAST(1 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(9 AS Numeric(2, 0)), CAST(1 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(10 AS Numeric(2, 0)), CAST(1 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(11 AS Numeric(2, 0)), CAST(0 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(12 AS Numeric(2, 0)), CAST(0 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(13 AS Numeric(2, 0)), CAST(0 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(14 AS Numeric(2, 0)), CAST(0 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(15 AS Numeric(2, 0)), CAST(0 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(16 AS Numeric(2, 0)), CAST(0 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(17 AS Numeric(2, 0)), CAST(0 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(18 AS Numeric(2, 0)), CAST(0 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(19 AS Numeric(2, 0)), CAST(0 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(20 AS Numeric(2, 0)), CAST(0 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(21 AS Numeric(2, 0)), CAST(2 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(22 AS Numeric(2, 0)), CAST(2 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(23 AS Numeric(2, 0)), CAST(2 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(24 AS Numeric(2, 0)), CAST(2 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(25 AS Numeric(2, 0)), CAST(2 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(26 AS Numeric(2, 0)), CAST(2 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(27 AS Numeric(2, 0)), CAST(2 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(28 AS Numeric(2, 0)), CAST(2 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(29 AS Numeric(2, 0)), CAST(2 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(30 AS Numeric(2, 0)), CAST(2 AS Numeric(2, 0)))
SET IDENTITY_INSERT [dbo].[Escaparate] OFF
GO

INSERT [dbo].[Cliente] ([NIF], [NomeCliente], [ContactoCliente]) VALUES (CAST(239943222 AS Numeric(9, 0)), N'Joaquim Fernandes', N'+351911000001')
INSERT [dbo].[Cliente] ([NIF], [NomeCliente], [ContactoCliente]) VALUES (CAST(239943223 AS Numeric(9, 0)), N'Maria Almeida', N'+351921000001')
INSERT [dbo].[Cliente] ([NIF], [NomeCliente], [ContactoCliente]) VALUES (CAST(239943224 AS Numeric(9, 0)), N'João Francisco Amadeu', N'+351931000001')
INSERT [dbo].[Cliente] ([NIF], [NomeCliente], [ContactoCliente]) VALUES (CAST(239943225 AS Numeric(9, 0)), N'Rosa Serafina', N'+351961000001')
INSERT [dbo].[Cliente] ([NIF], [NomeCliente], [ContactoCliente]) VALUES (CAST(239943226 AS Numeric(9, 0)), N'Bernadette Soares', N'+351911000002')
INSERT [dbo].[Cliente] ([NIF], [NomeCliente], [ContactoCliente]) VALUES (CAST(239943227 AS Numeric(9, 0)), N'Ariana Borralheiro', N'+351921000002')
INSERT [dbo].[Cliente] ([NIF], [NomeCliente], [ContactoCliente]) VALUES (CAST(239943228 AS Numeric(9, 0)), N'Sara Ferreira', N'+351961000002')
INSERT [dbo].[Cliente] ([NIF], [NomeCliente], [ContactoCliente]) VALUES (CAST(239943229 AS Numeric(9, 0)), N'Judite Malheiro', N'+351911000009')
INSERT [dbo].[Cliente] ([NIF], [NomeCliente], [ContactoCliente]) VALUES (CAST(239943230 AS Numeric(9, 0)), N'Gabriela Oliveira', N'+351921400001')

SET IDENTITY_INSERT [dbo].[RegistoVenda] ON 

INSERT [dbo].[RegistoVenda] ([IdRegistoVenda], [NIF], [IdFuncionario], [DataVenda], [Obs], [TotalPagar]) VALUES (CAST(0 AS Numeric(5, 0)), CAST(239943222 AS Numeric(9, 0)), CAST(1 AS Numeric(2, 0)), CAST(N'2023-06-20T00:00:00.000' AS DateTime), N'xpto', CAST(50.00 AS Decimal(6, 2)))
INSERT [dbo].[RegistoVenda] ([IdRegistoVenda], [NIF], [IdFuncionario], [DataVenda], [Obs], [TotalPagar]) VALUES (CAST(1 AS Numeric(5, 0)), CAST(239943222 AS Numeric(9, 0)), CAST(1 AS Numeric(2, 0)), CAST(N'2023-06-21T00:00:00.000' AS DateTime), N'xpto', CAST(75.00 AS Decimal(6, 2)))
INSERT [dbo].[RegistoVenda] ([IdRegistoVenda], [NIF], [IdFuncionario], [DataVenda], [Obs], [TotalPagar]) VALUES (CAST(2 AS Numeric(5, 0)), CAST(239943222 AS Numeric(9, 0)), CAST(1 AS Numeric(2, 0)), CAST(N'2023-06-22T00:00:00.000' AS DateTime), N'xpto', CAST(50.00 AS Decimal(6, 2)))
INSERT [dbo].[RegistoVenda] ([IdRegistoVenda], [NIF], [IdFuncionario], [DataVenda], [Obs], [TotalPagar]) VALUES (CAST(3 AS Numeric(5, 0)), CAST(239943223 AS Numeric(9, 0)), CAST(1 AS Numeric(2, 0)), CAST(N'2023-06-23T00:00:00.000' AS DateTime), N'xpto', CAST(75.00 AS Decimal(6, 2)))
INSERT [dbo].[RegistoVenda] ([IdRegistoVenda], [NIF], [IdFuncionario], [DataVenda], [Obs], [TotalPagar]) VALUES (CAST(4 AS Numeric(5, 0)), CAST(239943224 AS Numeric(9, 0)), CAST(2 AS Numeric(2, 0)), CAST(N'2023-05-27T00:00:00.000' AS DateTime), N'xpto', CAST(30.00 AS Decimal(6, 2)))
INSERT [dbo].[RegistoVenda] ([IdRegistoVenda], [NIF], [IdFuncionario], [DataVenda], [Obs], [TotalPagar]) VALUES (CAST(5 AS Numeric(5, 0)), CAST(239943224 AS Numeric(9, 0)), CAST(3 AS Numeric(2, 0)), CAST(N'2023-05-27T00:00:00.000' AS DateTime), N'xpto', CAST(40.00 AS Decimal(6, 2)))
INSERT [dbo].[RegistoVenda] ([IdRegistoVenda], [NIF], [IdFuncionario], [DataVenda], [Obs], [TotalPagar]) VALUES (CAST(6 AS Numeric(5, 0)), CAST(239943225 AS Numeric(9, 0)), CAST(3 AS Numeric(2, 0)), CAST(N'2023-06-14T00:00:00.000' AS DateTime), N'xpto', CAST(60.00 AS Decimal(6, 2)))
INSERT [dbo].[RegistoVenda] ([IdRegistoVenda], [NIF], [IdFuncionario], [DataVenda], [Obs], [TotalPagar]) VALUES (CAST(7 AS Numeric(5, 0)), CAST(239943226 AS Numeric(9, 0)), CAST(5 AS Numeric(2, 0)), CAST(N'2023-06-15T00:00:00.000' AS DateTime), N'xpto', CAST(150.00 AS Decimal(6, 2)))
INSERT [dbo].[RegistoVenda] ([IdRegistoVenda], [NIF], [IdFuncionario], [DataVenda], [Obs], [TotalPagar]) VALUES (CAST(8 AS Numeric(5, 0)), CAST(239943227 AS Numeric(9, 0)), CAST(3 AS Numeric(2, 0)), CAST(N'2023-06-27T00:00:00.000' AS DateTime), N'xpto', CAST(35.00 AS Decimal(6, 2)))
INSERT [dbo].[RegistoVenda] ([IdRegistoVenda], [NIF], [IdFuncionario], [DataVenda], [Obs], [TotalPagar]) VALUES (CAST(9 AS Numeric(5, 0)), CAST(239943228 AS Numeric(9, 0)), CAST(3 AS Numeric(2, 0)), CAST(N'2023-06-27T00:00:00.000' AS DateTime), N'xpto', CAST(65.00 AS Decimal(6, 2)))
INSERT [dbo].[RegistoVenda] ([IdRegistoVenda], [NIF], [IdFuncionario], [DataVenda], [Obs], [TotalPagar]) VALUES (CAST(10 AS Numeric(5, 0)), CAST(239943229 AS Numeric(9, 0)), CAST(5 AS Numeric(2, 0)), CAST(N'2023-06-27T00:00:00.000' AS DateTime), N'xpto', CAST(180.00 AS Decimal(6, 2)))
SET IDENTITY_INSERT [dbo].[RegistoVenda] OFF
GO
SET IDENTITY_INSERT [dbo].[Peca] ON 

INSERT [dbo].[Peca] ([IdPeca], [IdEscaparate], [IdArtigo], [IdRegistoVenda], [DataDefeito],[Estado]) VALUES (CAST(3 AS Numeric(5, 0)), CAST(10 AS Numeric(2, 0)), CAST(1 AS Numeric(5, 0)), CAST(1 AS Numeric(5, 0)), NULL,N'Loja')
INSERT [dbo].[Peca] ([IdPeca], [IdEscaparate], [IdArtigo], [IdRegistoVenda], [DataDefeito],[Estado]) VALUES (CAST(4 AS Numeric(5, 0)), CAST(10 AS Numeric(2, 0)), CAST(1 AS Numeric(5, 0)), CAST(1 AS Numeric(5, 0)), NULL,N'Armazem')
INSERT [dbo].[Peca] ([IdPeca], [IdEscaparate], [IdArtigo], [IdRegistoVenda], [DataDefeito],[Estado]) VALUES (CAST(5 AS Numeric(5, 0)), CAST(12 AS Numeric(2, 0)), CAST(2 AS Numeric(5, 0)), CAST(1 AS Numeric(5, 0)), NULL,N'Loja')
INSERT [dbo].[Peca] ([IdPeca], [IdEscaparate], [IdArtigo], [IdRegistoVenda], [DataDefeito],[Estado]) VALUES (CAST(6 AS Numeric(5, 0)), CAST(12 AS Numeric(2, 0)), CAST(2 AS Numeric(5, 0)), CAST(1 AS Numeric(5, 0)), NULL,N'Loja')
INSERT [dbo].[Peca] ([IdPeca], [IdEscaparate], [IdArtigo], [IdRegistoVenda], [DataDefeito],[Estado]) VALUES (CAST(7 AS Numeric(5, 0)), CAST(21 AS Numeric(2, 0)), CAST(5 AS Numeric(5, 0)), CAST(2 AS Numeric(5, 0)), NULL,N'Loja')
INSERT [dbo].[Peca] ([IdPeca], [IdEscaparate], [IdArtigo], [IdRegistoVenda], [DataDefeito],[Estado]) VALUES (CAST(8 AS Numeric(5, 0)), CAST(21 AS Numeric(2, 0)), CAST(5 AS Numeric(5, 0)), CAST(2 AS Numeric(5, 0)), NULL,N'Armazem')
INSERT [dbo].[Peca] ([IdPeca], [IdEscaparate], [IdArtigo], [IdRegistoVenda], [DataDefeito],[Estado]) VALUES (CAST(9 AS Numeric(5, 0)), CAST(21 AS Numeric(2, 0)), CAST(5 AS Numeric(5, 0)), CAST(2 AS Numeric(5, 0)), NULL,N'Armazem')
INSERT [dbo].[Peca] ([IdPeca], [IdEscaparate], [IdArtigo], [IdRegistoVenda], [DataDefeito],[Estado]) VALUES (CAST(10 AS Numeric(5, 0)), NULL, CAST(5 AS Numeric(5, 0)), NULL, CAST(N'2023-06-01T00:00:00.000' AS DateTime),N'Armazem')
INSERT [dbo].[Peca] ([IdPeca], [IdEscaparate], [IdArtigo], [IdRegistoVenda], [DataDefeito],[Estado]) VALUES (CAST(11 AS Numeric(5, 0)), CAST(22 AS Numeric(2, 0)), CAST(2 AS Numeric(5, 0)), NULL, CAST(N'2023-06-03T00:00:00.000' AS DateTime),N'Loja')
INSERT [dbo].[Peca] ([IdPeca], [IdEscaparate], [IdArtigo], [IdRegistoVenda], [DataDefeito],[Estado]) VALUES (CAST(12 AS Numeric(5, 0)), CAST(28 AS Numeric(2, 0)), CAST(3 AS Numeric(5, 0)), CAST(3 AS Numeric(5, 0)), NULL,N'Armazem')
INSERT [dbo].[Peca] ([IdPeca], [IdEscaparate], [IdArtigo], [IdRegistoVenda], [DataDefeito],[Estado]) VALUES (CAST(13 AS Numeric(5, 0)), CAST(30 AS Numeric(2, 0)), CAST(3 AS Numeric(5, 0)), CAST(3 AS Numeric(5, 0)), NULL,N'Loja')
INSERT [dbo].[Peca] ([IdPeca], [IdEscaparate], [IdArtigo], [IdRegistoVenda], [DataDefeito],[Estado]) VALUES (CAST(14 AS Numeric(5, 0)), CAST(1 AS Numeric(2, 0)), CAST(4 AS Numeric(5, 0)), CAST(4 AS Numeric(5, 0)), NULL,N'Armazem')
INSERT [dbo].[Peca] ([IdPeca], [IdEscaparate], [IdArtigo], [IdRegistoVenda], [DataDefeito],[Estado]) VALUES (CAST(15 AS Numeric(5, 0)), CAST(3 AS Numeric(2, 0)), CAST(4 AS Numeric(5, 0)), CAST(4 AS Numeric(5, 0)), NULL,N'Armazem')
INSERT [dbo].[Peca] ([IdPeca], [IdEscaparate], [IdArtigo], [IdRegistoVenda], [DataDefeito],[Estado]) VALUES (CAST(16 AS Numeric(5, 0)), CAST(4 AS Numeric(2, 0)), CAST(5 AS Numeric(5, 0)), CAST(4 AS Numeric(5, 0)), NULL,N'Loja')
INSERT [dbo].[Peca] ([IdPeca], [IdEscaparate], [IdArtigo], [IdRegistoVenda], [DataDefeito],[Estado]) VALUES (CAST(17 AS Numeric(5, 0)), CAST(7 AS Numeric(2, 0)), CAST(5 AS Numeric(5, 0)), CAST(4 AS Numeric(5, 0)), NULL,N'Loja')
INSERT [dbo].[Peca] ([IdPeca], [IdEscaparate], [IdArtigo], [IdRegistoVenda], [DataDefeito],[Estado]) VALUES (CAST(18 AS Numeric(5, 0)), CAST(9 AS Numeric(2, 0)), CAST(7 AS Numeric(5, 0)), NULL, CAST(N'2023-05-05T00:00:00.000' AS DateTime),N'Armazem')
SET IDENTITY_INSERT [dbo].[Peca] OFF
GO