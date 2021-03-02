--UNION e UNION ALL
--MESMO NUMERO DE COLUNAS
--UTLIZAR CAMPOS DO MESMO TIPO
--NOME DAS COLUNAS SERA  DO PRIMEIRO SELECT
--EXECUTA UM DISTINCT QUANDO UTILIZADO

--UNION
SELECT P.EnglishProductName, P.SafetyStockLevel, P.DaysToManufacture, P.Class, P.Color
FROM DimProduct P
WHERE P.Color = 'NA' 
UNION
SELECT P.EnglishProductName, P.SafetyStockLevel, P.DaysToManufacture, P.Class, P.Color
FROM DimProduct P
WHERE P.Color <> 'NA'

--UNION COM NULL SE NÃO TIVER O MESMO NUMERO DE COLUNAS
SELECT P.EnglishProductName, P.SafetyStockLevel, P.DaysToManufacture, NULL, NULL
FROM DimProduct P
WHERE P.Color = 'NA'
UNION
SELECT P.EnglishProductName, P.SafetyStockLevel, P.DaysToManufacture, P.Class, P.Color
FROM DimProduct P
WHERE P.Color <> 'NA'

--UNION(USA DISTINCT RETORNA 504 LINHAS) UNION ALL(TODOS OS REGISTROS 1212 LINHAS)
SELECT EnglishProductName, Class, Color
FROM DimProduct
UNION ALL
SELECT EnglishProductName, Class, Color
FROM DimProduct
ORDER BY 1
