CREATE DATABASE SQL_DB_1

create table Cursos
(
   id_curso int IDENTITY PRIMARY KEY not null,
   nome_curso varchar(200) not null,
   data_cadastro datetime not null,
   login_cadastro varchar(15) not null
);

CREATE TABLE Turmas
(
    id_turma int IDENTITY PRIMARY KEY NOT NULL,
	id_aluno int  REFERENCES Alunos (id_aluno) NOT NULL,
	id_curso int REFERENCES Cursos (id_curso) NOT NULL,
	valor_turma numeric(15,2) not null,
	desconto numeric(3,2) not null,
	data_inicio date not null,
	data_termino date,
	data_cadastro datetime not null,
	login_cadastro varchar(15)
);

--DELETANDO UMA CHAVE ESTRANGEIRA
ALTER TABLE Turmas DROP CONSTRAINT  FK__Turmas__id_aluno__5165187F
ALTER TABLE Turmas DROP COLUMN id_aluno
ALTER TABLE Turmas DROP COLUMN valor_turma
ALTER TABLE Turmas DROP COLUMN desconto
select * FROM Turmas 

CREATE TABLE Registro_Presenca
(
    id_turma int REFERENCES Turmas (id_turma) not null,
	id_aluno int  REFERENCES Alunos (id_aluno) not null,
	id_situacao int REFERENCES Situacao (id_situacao) not null,
	data_presenca date not null,
	data_cadastro date not null,
	login_cadastro varchar(15) not null
);

CREATE TABLE Alunos
(
   id_aluno int IDENTITY PRIMARY KEY  NOT NULL, 
   nome varchar(200) NOT NULL,
   data_nascimento date NOT NULL,
   sexo varchar(1) NULL, --M para Masculino ou F para Feminino
   data_cadastro datetime NOT NULL,
   login_cadastro varchar(15) NOT NULL
 );
 
CREATE TABLE Situacao 
(
   id_situacao int IDENTITY PRIMARY KEY NOT NULL,
   situacao varchar(25) not null,
   data_cadastro datetime,
   login_cadastro varchar(15)
);

CREATE TABLE AlunosXTurmas(
	id_turma int FOREIGN KEY REFERENCES Turmas (id_turma),
	id_aluno int FOREIGN KEY REFERENCES Alunos (id_aluno),
	valor NUMERIC(13,2) NOT NULL,
	valor_desconto NUMERIC(3,2) NOT NULL,
	data_cadastro DATETIME NOT NULL,
	login_cadastro VARCHAR(15) NOT NULL,
);
