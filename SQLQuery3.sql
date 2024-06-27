SELECT * FROM DimProduct

SELECT TOP (10)
	UnitPrice
FROM 
	DimProduct
ORDER BY
	UnitPrice DESC

-- QUANTOS PRODUTOS TEM UM PRE�O UNITARIO MAIOR QUE $1000

SELECT
	ProductName AS 'Produto',
	unitprice AS 'Pre�o'
FROM
	DimProduct
WHERE
	UnitPrice >= 1000