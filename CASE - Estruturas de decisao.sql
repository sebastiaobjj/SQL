--CASE - Estruturas de decisão


SELECT X.* INTO TEMP FROM(
SELECT ROW_NUMBER() OVER (ORDER BY ID_ALUNO) AS LINHA,
	   DADOS.ID_ALUNO,DADOS.NOME, DADOS.SEXO,
	   DADOS.nome_curso,
	   DADOS.data_inicio, DADOS.data_termino 
FROM(
SELECT A.ID_ALUNO, A.NOME, A.SEXO,
	   C.nome_curso,
	   T.data_inicio, T.data_termino
	FROM AlunosXTurmas AT
		INNER JOIN  Turmas T ON T.id_turma = AT.id_turma
		INNER JOIN Cursos C ON C.id_curso = T.id_curso
		INNER JOIN Alunos A ON A.id_aluno = AT.id_aluno
	)DADOS
)X;


--CHEGAGEM DE SEXO
SELECT X.* FROM(
SELECT NOME,
	   CASE SEXO
		WHEN 'M' THEN 'MASCULINO'
		WHEN 'F' THEN 'FEMENINO'
		ELSE 'VERIFIQUE' 
		END AS SEXO
	FROM TEMP
)X
WHERE SEXO = 'VERIFIQUE';



