-- banco de dados
create database dbescola;

-- tabela
create table tbaluno(
	idAluno integer primary key auto_increment,
    nomeAluno varchar(1000),
    idadeAluno integer(2000),
    curso varchar(1000),
    nota float(1000)
);
 -- olhar tabela --
select * from tbaluno;

 -- inserir na tabela
 
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




 
