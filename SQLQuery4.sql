USE [NaturVida1]
GO
/****** Object:  StoredProcedure [dbo].[SP_DESCONTARCANT]    Script Date: 23/04/2023 4:57:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[SP_DESCONTARCANT]
	@Codprod INT,
	@Cantidad INT
	AS
	UPDATE Productos SET Cantidad = Cantidad - @Cantidad
	WHERE Codigo = @Codprod

	exec SP_DESCONTARCANT 211111111,1

	create proc Hola
	@Codprod varchar(50),
	@Cantidad INT
	AS
	UPDATE Productos SET Cantidad = Cantidad - @Cantidad
	WHERE Codigo = @Codprod

	exec Hola 211111111,1