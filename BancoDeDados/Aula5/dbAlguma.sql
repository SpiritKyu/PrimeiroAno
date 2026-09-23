-- banco de dados
create database dbescola;

use dbescola;
-- tabela
create table tbaluno(
	idAluno integer primary key auto_increment,
    nomeAluno varchar(1000),
    idadeAluno integer,
    curso varchar(1000),
    nota float
);

create table tbprofessor(
	idProfessor integer primary key auto_increment,
	nomeProfessor varchar(1000),
	disciplina varchar(1000),
	turma varchar(2)
);
 -- olhar tabela --
select * from tbaluno;

 -- inserir na tabela aluno uooou
 
insert into tbaluno(nomeAluno, idadeAluno, curso, nota) values('Ana', 20, 'Engenharia', 8.5), ('Bruno', 22, 'Ciência da Computação', 9.50),('Carla', 19, 'Design', 7.8),('Daniel', 21, 'Engenharia', 8.0),('Eduardo', 20, 'Ciencia da Computacao', 9.5),('Felipe', 23, 'Design', 6.9),('Gabriela', 18, 'Engenharia', 8.8),('Henrique', 24, 'Ciencia da Computacao', 7.5),('Isabela', 22, 'Design', 9.0),('Joao', 21, 'Engenharia', 7.2),('Karen', 20, 'Administracao', 8.3),('Lucas', 25, 'Administracao', 6.8),('Mariana', 19, 'Marketing', 9.1),('Nicolas', 23, 'Marketing', 7.7),('Olivia', 21, 'Pedagogia', 8.9),('Paulo', 24, 'Pedagogia', 7.0),('Quezia', 20, 'Administracao', 9.4),('Rafael', 22, 'Marketing', 8.1),('Sabrina', 18, 'Pedagogia', 8.6),('Thiago', 26, 'Ciencia da Computacao', 9.3);

-- atividade

select * from tbaluno;

select nomeAluno from tbaluno;

select nomeAluno, curso from tbaluno;

select * from tbaluno where curso = 'Engenharia';

select * from tbaluno where nota > 8;

select * from tbaluno ORDER BY nomeAluno ASC;

select * from tbaluno ORDER BY nota DESC;

select * from tbaluno ORDER BY nota DESC limit 3;

-- inserir na tabela professor 

insert into tbprofessor(nomeProfessor, disciplina, turma) values('Ana Silva', "Matemática", "1A"), ('Bruno Costa', 'Português', '1B'), ('Carla Souza', 'História', '2A'), ('Daniel Lima,' 'Geografia', '2B'), ('Eduardo Alves', 'Matemática', '3A'), ('Fernanda Rocha', 'Português', '3B'), ('Gabriel Santos', 'Física', '1A'), ('Helena Martins', 'Química', '2A'), ('Igor Pereira', 'Biologia', '3A'), ('Juliana Gomes', 'História', '1B');

-- atividade :D


select * from tbprofessor;

select nomeProfessor from tbprofessor;

select nomeProfessor, disciplina from tbprofessor;

select * from tbprofessor where disciplina = 'Matemática';

select * from tbprofessor where turma = '1A';

select * from tbprofessor where turma = '3A';

select * from tbprofessor where disciplina = 'História';

select * from tbprofessor where disciplina = 'Português';

select nomeProfessor from tbprofessor where turma = '2A';

select nomeProfessor from tbprofessor where turma = '1B';

-- 10

-- 2

-- 2

-- 2

-- 2

-- 2

UPDATE tbprofessor
SET disciplina = 'Sociologia'
WHERE idProfessor = 4;

UPDATE tbprofessor
SET turma = '3B'
WHERE nomeProfessor = 'Helena Martins';

UPDATE tbprofessor
SET disciplina = 'Ciências'
WHERE nomeProfessor = 'Igor Pereira';

SET SQL_SAFE_UPDATES = 0;​

UPDATE tbprofessor
SET turma = '3C'
WHERE disciplina = 'Matemática';

UPDATE tbprofessor
SET disciplina = 'Projeto de Vida'
WHERE turma = '1B';

select nomeProfessor from tbprofessor where idProfessor = 7;

select nomeProfessor from tbprofessor where disciplina = 'História';

select disciplina from tbprofessor where turma = '1A';

select idProfessor from tbprofessor where turma = '3A';

select nomeProfessor from tbprofessor where disciplina = 'Português';





















































































































