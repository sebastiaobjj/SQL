INSERT INTO dbo.Alunos VALUES ('Alessandro Henrique Peres Porfirio','04/10/1989','M','02/11/2019 15:00:00','ALESS');
INSERT INTO dbo.Alunos VALUES ('Orlando Passarelli','04/10/1954','M','02/11/2019 15:00:00','ORLAN');
INSERT INTO dbo.Alunos VALUES ('Nally Passarelli','08/09/1979','F','02/11/2019 15:00:00','NALLY');
select * from dbo.Alunos
delete from dbo.Cursos where id_curso = 5

insert into dbo.Cursos VALUES ('VBA I','02/11/2019 15:00:00','ALESS');
insert into dbo.Cursos VALUES ('SQL','02/11/2019 15:00:00','ORLAN');
insert into dbo.Cursos VALUES ('JAVA','02/11/2019 15:00:00','SEBASTIAO');
SELECT * FROM DBO.Cursos

insert into dbo.Situacao values ('Presença confirmada', '02/11/2019 15:00:00','ALESS')
insert into dbo.Situacao values ('Ausente Sem Justificativa', '02/11/2019 15:00:00','ALESS')
insert into dbo.Situacao values ('Ausente Com Justificativa', '02/11/2019 15:00:00','ALESS')
insert into dbo.Situacao values ('Ausente Com Justificativa', '02/11/2019 15:00:00','ORLAN')
select * from dbo.Situacao

INSERT INTO DBO.Turmas VALUES(1, GETDATE(),GETDATE(),GETDATE(),'ALESS' );
INSERT INTO DBO.Turmas VALUES(2, GETDATE(),GETDATE(),GETDATE(),'ALESS' );
select * FROM Turmas 

INSERT INTO DBO.AlunosXTurmas VALUES(1,2, 100.90, 0.01, GETDATE(),'ALESS' );
INSERT INTO DBO.AlunosXTurmas VALUES(1,1, 150.90, 0.05, GETDATE(),'SEBASTIAO' );

select * FROM AlunosXTurmas 

