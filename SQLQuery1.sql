USE ONLINE_SHOP
GO 
IF OBJECT_ID('usp','P') IS NOT NULL
	DROP PROC usp
GO

CREATE PROC usp
	@a float, 
	@b float,
	@tong float OUT
AS
	--RETURN (@a + @b)
	SET @tong = @a + @b
GO
DECLARE @x float = 1.1 , @y float = 2.5, @tong float = 0
EXEC  usp @x, @y ,@tong OUT
PRINT CAST(@x AS varchar) + ' + ' + CAST(@y AS varchar) + ' = ' + CAST(@tong AS varchar)