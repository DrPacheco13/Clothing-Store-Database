USE ClothingStore;
GO

CREATE TRIGGER trg_SetEstadoToNull
ON [dbo].[Peca]
AFTER INSERT, UPDATE
AS
BEGIN
    IF EXISTS (SELECT 1 FROM inserted WHERE [IdRegistoVenda] IS NOT NULL)
    BEGIN
        UPDATE [dbo].[Peca]
        SET [Estado] = NULL
        WHERE [IdPeca] IN (SELECT [IdPeca] FROM inserted WHERE [IdRegistoVenda] IS NOT NULL)
    END
END