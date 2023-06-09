USE [NaturVida1]
GO
/****** Object:  StoredProcedure [dbo].[SP_BUSCARINVENTARIO]    Script Date: 23/04/2023 4:57:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[SP_BUSCARINVENTARIO]
@Prod INT
AS
SELECT P.Descripción,P.Cantidad,SUM(F.Cantidad) AS 'Vendido' FROM Factura_Detalle AS F
JOIN Productos AS P on F.Codigo_Productos = P.Codigo
where P.Codigo = @Prod GROUP BY P.Descripción,P.Cantidad


exec BuscarPructos 1000
exec SP_BUSCARINVENTARIO 1000
select * from Productos