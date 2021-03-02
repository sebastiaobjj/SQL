SELECT Turmas.*	FROM Turmas	
	
SELECT a.nome, a.sexo, YEAR(a.data_nascimento) AS ANO, MONTH(a.data_nascimento) MES FROM Alunos a
WHERE a.nome LIKE '%N%'
AND sexo = 'M'

--FUN��O FLOOR RETORNA A PARTE INTEIRA
SELECT floor(AT.valor * AT.valor_desconto) as Desconto
	FROM AlunosXTurmas AT
	WHERE AT.valor_desconto > 0
	AND AT.valor > 100

--TOTAL DE TURMAS POR CURSO
SELECT c.id_curso, c.nome_curso, COUNT(t.id_turma) AS Total_Turmas
	FROM dbo.Turmas t
		INNER JOIN dbo.Cursos C on C.id_curso = t.id_curso
	GROUP BY C.id_curso, C.nome_curso

--UTILIZAR A CLAUSULA IN (SELECIONA PARAMENTROS DENTRO DOS VALORES)
SELECT * 
FROM dbo.Turmas
WHERE id_curso IN(1,2);

--UTILIZAR A CLAUSULA NOT IN (N�O SELECIONA PARAMENTROS DENTRO DOS VALORES)
SELECT * 
FROM dbo.Turmas
WHERE id_curso NOT IN(1,2);

--SELECIONA ANO DO NASCIMENTO DOS ALUNOS COM DISTINCT (NUMERO 1 CLASSIFICA PELA PRIMEIRA COLUNA)
SELECT  DISTINCT(DATEPART(YEAR,data_nascimento))
FROM dbo.Alunos
ORDER BY 1 DESC

--LISTA COMPLETA DE ALUNOS
SELECT C.NOME_CURSO, C.ID_CURSO, AT.VALOR, AT.VALOR_DESCONTO, T.DATA_INICIO, A.NOME, A.SEXO
FROM AlunosXTurmas AT
	INNER JOIN DBO.TURMAS T ON T.ID_TURMA = AT.ID_TURMA
	INNER JOIN DBO.CURSOS C ON C.ID_CURSO = T.ID_CURSO
	INNER JOIN DBO.ALUNOS A ON A.ID_ALUNO = AT.ID_ALUNO
WHERE A.SEXO = 'M'
ORDER BY 2;





