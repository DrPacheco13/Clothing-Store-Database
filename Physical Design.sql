CREATE DATABASE ClothingStore;
GO
USE ClothingStore;
GO

CREATE TABLE Seccao
(
    IdSeccao NUMERIC(2,0) NOT NULL IDENTITY(0,1),
    Nome VARCHAR(50) NOT NULL,

    PRIMARY KEY (IdSeccao)
);

CREATE TABLE Escaparate
(
    IdEscaparate NUMERIC(2,0) NOT NULL IDENTITY(0,1),
    IdSeccao NUMERIC(2,0) NOT NULL,

    PRIMARY KEY (IdEscaparate),
    FOREIGN KEY (IdSeccao)              REFERENCES Seccao(IdSeccao)
);

CREATE TABLE Artigo
(
    IdArtigo NUMERIC(5,0) NOT NULL IDENTITY(0,1),
    NomeArtigo VARCHAR(50) NOT NULL,
    MarcaArtigo VARCHAR(50) NOT NULL,
    Modelo VARCHAR(50) NOT NULL,
    Tamanho VARCHAR(50) NOT NULL,
    Preco DECIMAL(6,2) NOT NULL DEFAULT 0.00 CONSTRAINT artigoPreco CHECK (Preco >= 0),
    Cor VARCHAR(50) NOT NULL,

    PRIMARY KEY (IdArtigo)
);

CREATE TABLE Funcionario
(
    IdFuncionario NUMERIC(2,0) NOT NULL IDENTITY(0,1),
    NomeFuncionario VARCHAR(150) NOT NULL,
    MoradaFuncionario VARCHAR(200) NOT NULL,
    Turno BIT NOT NULL,
    NIF NUMERIC(9,0) NOT NULL UNIQUE,
    ContactoFuncionario VARCHAR(13) NOT NULL,

    PRIMARY KEY (IdFuncionario)
);

CREATE TABLE Cliente
(
    NIF NUMERIC(9,0) NOT NULL,
    NomeCliente VARCHAR(50) NOT NULL,
    ContactoCliente VARCHAR(13) NOT NULL,

    PRIMARY KEY (NIF)
);

CREATE TABLE RegistoVenda
(
    IdRegistoVenda NUMERIC(5,0) NOT NULL IDENTITY(0,1),
    NIF NUMERIC(9,0) NOT NULL,
    IdFuncionario NUMERIC(2,0) NOT NULL,
    DataVenda DATETIME NOT NULL,
    Obs VARCHAR(255) NULL,
    TotalPagar DECIMAL(6,2) NOT NULL DEFAULT 0.00 CONSTRAINT registoVendaTotal CHECK (TotalPagar >= 0),

    PRIMARY KEY (IdRegistoVenda),
    FOREIGN KEY (NIF)                        REFERENCES Cliente(NIF),
    FOREIGN KEY (IdFuncionario)              REFERENCES Funcionario(IdFuncionario)
);

CREATE TABLE Peca
(
    IdPeca NUMERIC(5,0) NOT NULL IDENTITY(0,1),
    IdEscaparate NUMERIC(2,0) NULL,
    IdArtigo NUMERIC(5,0) NOT NULL,
    IdRegistoVenda NUMERIC(5,0) NULL,
    DataDefeito DATETIME NULL,
	Estado VARCHAR(50) NULL,

    PRIMARY KEY (IdPeca),
    FOREIGN KEY (IdEscaparate)                REFERENCES Escaparate(IdEscaparate),
    FOREIGN KEY (IdArtigo)                    REFERENCES Artigo(IdArtigo),
    FOREIGN KEY (IdRegistoVenda)              REFERENCES RegistoVenda(IdRegistoVenda)
);