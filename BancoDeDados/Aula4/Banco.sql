-- Script para criação das tabelas
CREATE DATABASE FranquiaLoja;
USE FranquiaLoja;

CREATE TABLE LOJA (
   idLoja INTEGER primary key auto_increment,
   nome VARCHAR(100)
);

CREATE TABLE CLIENTE (
    idCliente INTEGER primary key auto_increment,
    idLoja INTEGER,
    nome VARCHAR(100),
    cpf  varchar(11),
    rua VARCHAR(100),
    cidade VARCHAR(100),
    estado VARCHAR(2),
    credito_limite DECIMAL(7,2) NOT NULL,
    FOREIGN KEY(idLoja) REFERENCES LOJA(idLoja)
);

-- Inserção das informações das lojas, inserindo apenas o dado na coluna nome

INSERT INTO LOJA(nome) VALUES ('Casas Bahia');
INSERT INTO LOJA(nome) VALUES ('Ponto Frio');
INSERT INTO LOJA(nome) VALUES ('Pao de acucar');
INSERT INTO LOJA(nome) VALUES ('Extra');
INSERT INTO LOJA(nome) VALUES ('Acai atacadista');

select * from loja;

select nome from loja;

 -- Inserção das informações dos clientes

INSERT INTO CLIENTE VALUES (1,1, 'Pedro Augusto da Rocha',
'48181884094', 'Rua Pedro Carlos Hoffman', 'Porto Alegre', 'RS', 700.00);
INSERT INTO CLIENTE VALUES (2,2, 'Antonio Carlos Mamel',
'50574326219', 'Av. Pinheiros', 'Belo Horizonte', 'MG', 3500.50);
INSERT INTO CLIENTE VALUES (3,3, 'Luiza Augusta Mhor', '59154535387',
'Rua Salto Grande', 'Niteroi', 'RJ', 4000.00);
INSERT INTO CLIENTE VALUES (4,4, 'Jane Ester', '69760415160',
'Av. 7 de setembro', 'Erechim', 'RS', 800.00);
INSERT INTO CLIENTE VALUES (5,5, 'Marcos Antonio dos Santos',
'73649809893', 'Av. Farrapos', 'Porto Alegre', 'RS', 4250.25);

select * from cliente;

select nome, cpf, estado from cliente where estado <> "rs" ORDER BY nome ASC;

select nome, cpf, estado from cliente where estado = "rs" ORDER BY nome DESC;

select nome, idCliente, credito_limite from cliente where credito_limite > 1000 and estado = "rs" ORDER BY credito_limite ASC;
