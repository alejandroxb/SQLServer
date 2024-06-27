SELECT * FROM DimStore

SELECT
	StoreType,
	SUM(EmployeeCount) AS 'Quantidade'
FROM
	DimStore
GROUP BY
	StoreType
ORDER BY -- DESSA FORMA EST� SENDO ORDENADO DE FORMA ALFAB�TICA
	StoreType DESC

-- DESSA FORMA USAMOS COMO CRIT�RIO DE ORDENA��O A SOMA DE DA COLUNA EmployeeCount
SELECT
	StoreType,
	SUM(EmployeeCount) AS 'Quantidade'
FROM
	DimStore
GROUP BY
	StoreType
ORDER BY
	SUM(EmployeeCount) DESC