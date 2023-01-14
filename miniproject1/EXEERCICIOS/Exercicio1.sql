 /*exercicio 1*/
 
 CREATE DATABASE LIVRARIA;
 
 USE LIVRARIA;
 STATUS;
 
 CREATE TABLE LIVROS(LIVRO VARCHAR(30),
 AUTOR VARCHAR(30),
 SEXO CHAR(1),
 PAGINAS INT(10),
 EDITORA VARCHAR(30),
 VALOR NUMERIC(10,2),
 UF CHAR(2),
 ANO INT(4)
 );
 
 SHOW TABLES;
 
 DESC LIVROS;
 
 INSERT INTO LIVROS(LIVRO,AUTOR,SEXO,PAGINAS,EDITORA,VALOR,UF,ANO)VALUES('Cavaleiro Real','Ana Claudia','F',465,'Atlas',49.9,'RJ',2009);
 INSERT INTO LIVROS(LIVRO, AUTOR, SEXO, PAGINAS, EDITORA, VALOR, UF, ANO)VALUES('SQL para Leigos','João Nunes','M',450,'Addison',98,'SP',2018),
 ('Receitas Caseiras','Celia Tavares','F',210,'Atlas',45,'RJ',2018)
 
 INSERT INTO LIVROS(LIVRO,AUTOR,SEXO,PAGINAS,EDITORA,VALOR,UF,ANO)VALUES('Pessoas Efetivas','Eduardo Santos','M',390,'Beta',78.99,'RJ',2018),
 ('Habitos Saudáveis','Eduardo Santos','M',630,'Beta',150.98,'RJ',2019),
 ('A Casa Marrom','Hermes Macedo','M',250,'Bubba',60,'MG',2016),
 ('Estacio Querido','Geraldo Francisco','M',310,'Insignia',100,'ES',2015),
 ('Pra sempre amigas','Leda Silva','F',510,'Insignia',78.98,'ES',2011),
 ('Copas Inesqueciveis','Marco Alcantara','M',200,'Larson',130.98,'RS',2018),
 ('O poder da mente','Clara Mafra','F',120,'Continental',56.58,'SP',2017);
 
 
 SELECT * FROM LIVROS;
 SELECT LIVRO, EDITORA FROM LIVROS;
 SELECT LIVRO, UF FROM LIVROS WHERE SEXO='M';
 SELECT LIVRO, PAGINAS FROM LIVROS WHERE SEXO='F';
 SELECT VALOR FROM LIVROS WHERE UF='SP';
 SELECT * FROM LIVROS WHERE UF='RJ' OR UF='SP';
