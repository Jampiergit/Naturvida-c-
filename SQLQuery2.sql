USE [NaturVida1]
GO
/****** Object:  StoredProcedure [dbo].[SP_BUSCARINVENTARIOS]    Script Date: 23/04/2023 4:56:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[SP_BUSCARINVENTARIOS]
AS
SELECT P.Descripción,P.Cantidad,SUM(F.Cantidad) AS 'Vendido' FROM Factura_Detalle AS F
JOIN Productos AS P on F.Codigo_Productos = P.Codigo
GROUP BY P.Descripción,P.Cantidad


select * from Productos