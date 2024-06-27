SELECT * FROM DimStore

-- QUANTIDADE DE FUNCION�RIOS
SELECT 
	SUM(EmployeeCount)
FROM
	DimStore

-- SUBDIVIDIR QUANTOS FUNCION�RIOS POR TIPO DE LOJA

SELECT
	StoreType AS 'Loja',
	SUM(EmployeeCount) AS 'Funcion�rios'
FROM
	DimStore
GROUP BY
	StoreType

-- CALCULAR QUAL A M�DIA DE CUSTO DOS PRODUTOS
SELECT * FROM DimProduct

SELECT
	BrandName AS 'Marca',
	AVG(UnitCost) AS 'M�dia de Custo'
FROM 
	DimProduct
GROUP BY
	BrandName

-- QUAL MAXIMO DE VALOR DE PRE�O UNIT�RIO[UnitCost] SEGUNDO A COLUNA DE ClassName

SELECT
	ClassName, -- AGRUPAMENTO FEITO POR ClassName
	MAX(UnitPrice) AS 'M�ximo Pre�o' -- C�LCULO QUE QUEREMOS FAZER � O M�XIMO UnitPrice
FROM
	DimProduct
GROUP BY
	ClassName