--DROP - apagando objetos do banco (procedures, tables, sequences, entre outros)
--APAGAR AS TABELAS DO BANCO
SELECT * FROM SYS.tables

DROP TABLE TBDELETE

--INDEX
CREATE INDEX IND_TESTE ON ALUNOS(ID_ALUNO)
DROP INDEX ALUNOS.IND_TESTE

CREATE PROCEDURE PROC_AULNOS_TESTE
AS
	SELECT A.NOME, A.DATA_NASCIMENTO 
	FROM ALUNOS A
	WHERE A.NOME LIKE '%N%'

EXEC PROC_AULNOS_TESTE

DROP PROCEDURE PROC_ALUNOS_TESTE