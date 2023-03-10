
 
 CREATE DATABASE COMERCIO;
 
 USE COMERCIO;
 
 SHOW DATABASES;
 
 CREATE TABLE CLIENTE(
 
 IDCLIENTE INT PRIMARY KEY AUTO_INCREMENT,
 NOME VARCHAR(30) NOT NULL,
 SEXO ENUM('M','F') NOT NULL,
 EMAIL VARCHAR(50) UNIQUE,
 CPF VARCHAR(15) UNIQUE
 
 
 
 );
 
 /* TEM Q SER O MESMO TIPO CHAVE ENTRANGEIRA*/
 
 
 
 CREATE TABLE ENDERECO(
 IDENDERECO INT PRIMARY KEY AUTO_INCREMENT,
 RUA VARCHAR(30) NOT NULL,
 BAIRRO VARCHAR(30) NOT NULL,
 CIDADE VARCHAR(30) NOT NULL,
 ESTADO CHAR(2) NOT NULL,
 ID_CLIENTE INT UNIQUE,
 FOREIGN KEY(ID_CLIENTE)
 REFERENCES CLIENTE(IDCLIENTE)
 );
 
 CREATE TABLE TELEFONE(
 
  IDTELEFONE INT PRIMARY KEY AUTO_INCREMENT,
  TIPO ENUM('RES','COM','CEL') NOT NULL,
  NUMERO VARCHAR(10) NOT NULL,
  ID_CLIENTE INT,
  FOREIGN KEY(ID_CLIENTE) REFERENCES CLIENTE(IDCLIENTE)
  
 );
 
 /*FOREIGN E UMA CHAVE PRIMARIA DE UMA TABELA QUE VAI ATE A OUTRAA PARA TRAZER REGISTROS*/

 DROP TABLE CLIENTE;
 
 
 
 INSERT INTO CLIENTE VALUES(NULL,'JOAO',
 'M','JOAO@IG.COM','75674757377');
 
  INSERT INTO CLIENTE VALUES(NULL,'CARLOS',
 'M','CARLOS@IG.COM','75666666377');
 
  INSERT INTO CLIENTE VALUES(NULL,'ANA',
 'F','ANA@IG.COM','7567455557377');
 
  INSERT INTO CLIENTE VALUES(NULL,'CLARA',
 'M',NULL,'756747444377');
 
  INSERT INTO CLIENTE VALUES(NULL,'JORGE',
 'M','JORGE@IG.COM','7567433337377');
 
  INSERT INTO CLIENTE VALUES(NULL,'CELIA',
 'F','CELIA@IG.COM','75673457377');
 
 DESC ENDERECO;
 
 INSERT INTO ENDERECO VALUES(NULL,'RIA ANTONIO SA',
 'CENTRO','BH','MG',4);
 
  INSERT INTO ENDERECO VALUES(NULL,'RIA CAP SA',
 'CENTRO','RJ','RJ',1);
 
  INSERT INTO ENDERECO VALUES(NULL,'RIA PRES SA',
 'CENTRO','SP','SP',3);
 
  
  INSERT INTO ENDERECO VALUES(NULL,'RIA BORA SA',
 'ESTACIO','RJ','RJ',2);
 
  
  INSERT INTO ENDERECO VALUES(NULL,'RIA ALFANDEGA SA',
 'CENTRO','VT','ES',6);
 
  
  INSERT INTO ENDERECO VALUES(NULL,'RIA CEMTRO SA',
 'CENTRO','SA','BA',5);
 
 SELET * FROM ENDERECO;
 
 DESC TELEFONE;
 
 SELECT * FROM CLIENTE;
 
 INSERT INTO TELEFONE VALUES(NULL,'CEL','7892424943',
 5);
 
 INSERT INTO TELEFONE VALUES(NULL,'RES','7892426943',
 5); 
 
  INSERT INTO TELEFONE VALUES(NULL,'COM','7896624943',
 5);
 
  INSERT INTO TELEFONE VALUES(NULL,'CEL','78927774943',
 1);
 
  INSERT INTO TELEFONE VALUES(NULL,'CEL','7892888943',
 3);
 
  INSERT INTO TELEFONE VALUES(NULL,'CEL','7893424943',
 4);
 
 

 USE COMERCIO;
SHOW TABLES;
SELECT * FROM CLIENTE;

/* EXERCICIOS DML */

INSERT INTO CLIENTE VALUES(NULL,'FLAVIO','M','FLAVIO@IG.COM','4657765');
INSERT INTO CLIENTE VALUES(NULL,'ANDRE','M','ANDRE@GLOBO.COM','7687567');
INSERT INTO CLIENTE VALUES(NULL,'GIOVANA','F',NULL,'0876655');
INSERT INTO CLIENTE VALUES(NULL,'KARLA','M','KARLA@GMAIL.COM','545676778');
INSERT INTO CLIENTE VALUES(NULL,'DANIELE','M','DANIELE@GMAIL.COM','43536789');
INSERT INTO CLIENTE VALUES(NULL,'LORENA','M',NULL,'774557887');
INSERT INTO CLIENTE VALUES(NULL,'EDUARDO','M',NULL,'54376457');
INSERT INTO CLIENTE VALUES(NULL,'ANTONIO','F','ANTONIO@IG.COM','12436767');
INSERT INTO CLIENTE VALUES(NULL,'ANTONIO','M','ANTONIO@UOL.COM','3423565');
INSERT INTO CLIENTE VALUES(NULL,'ELAINE','M','ELAINE@GLOBO.COM','32567763');
INSERT INTO CLIENTE VALUES(NULL,'CARMEM','M','CARMEM@IG.COM','787832213');
INSERT INTO CLIENTE VALUES(NULL,'ADRIANA','F','ADRIANA@GMAIL.COM','88556942');
INSERT INTO CLIENTE VALUES(NULL,'JOICE','F','JOICE@GMAIL.COM','55412256');

/* CADASTRE UM ENDERECO PARA CADA CLIENTE */

INSERT INTO ENDERECO VALUES(NULL,'RUA GUEDES','CASCADURA','B. HORIZONTE','MG',9);
INSERT INTO ENDERECO VALUES(NULL,'RUA MAIA LACERDA','ESTACIO','RIO DE JANEIRO','RJ',10);
INSERT INTO ENDERECO VALUES(NULL,'RUA VISCONDESSA','CENTRO','RIO DE JANEIRO','RJ',11);
INSERT INTO ENDERECO VALUES(NULL,'RUA NELSON MANDELA','COPACABANA','RIO DE JANEIRO','RJ',12);
INSERT INTO ENDERECO VALUES(NULL,'RUA ARAUJO LIMA','CENTRO','VITORIA','ES',13);
INSERT INTO ENDERECO VALUES(NULL,'RUA CASTRO ALVES','LEBLON','RIO DE JANEIRO','RJ',14);
INSERT INTO ENDERECO VALUES(NULL,'AV CAPITAO ANTUNES','CENTRO','CURITIBA','PR',15);
INSERT INTO ENDERECO VALUES(NULL,'AV CARLOS BARROSO','JARDINS','SAO PAULO','SP',16);
INSERT INTO ENDERECO VALUES(NULL,'ALAMEDA SAMPAIO','BOM RETIRO','CURITIBA','PR',17);
INSERT INTO ENDERECO VALUES(NULL,'RUA DA LAPA','LAPA','SAO PAULO','SP',18);
INSERT INTO ENDERECO VALUES(NULL,'RUA GERONIMO','CENTRO','RIO DE JANEIRO','RJ',19);
INSERT INTO ENDERECO VALUES(NULL,'RUA GOMES FREIRE','CENTRO','RIO DE JANEIRO','RJ',20);
INSERT INTO ENDERECO VALUES(NULL,'RUA GOMES FREIRE','CENTRO','RIO DE JANEIRO','RJ',21);
 
/* CADASTRE TELEFONES PARA OS CLIENTES */


INSERT INTO TELEFONE VALUES(NULL,'RES','68976565',9);
INSERT INTO TELEFONE VALUES(NULL,'CEL','99656675',9);
INSERT INTO TELEFONE VALUES(NULL,'CEL','33567765',11);
INSERT INTO TELEFONE VALUES(NULL,'CEL','88668786',11);
INSERT INTO TELEFONE VALUES(NULL,'COM','55689654',11);
INSERT INTO TELEFONE VALUES(NULL,'COM','88687979',12);
INSERT INTO TELEFONE VALUES(NULL,'COM','88965676',13);
INSERT INTO TELEFONE VALUES(NULL,'CEL','89966809',15);
INSERT INTO TELEFONE VALUES(NULL,'COM','88679978',16);
INSERT INTO TELEFONE VALUES(NULL,'CEL','99655768',17);
INSERT INTO TELEFONE VALUES(NULL,'RES','89955665',18);
INSERT INTO TELEFONE VALUES(NULL,'RES','77455786',19);
INSERT INTO TELEFONE VALUES(NULL,'RES','89766554',19);
INSERT INTO TELEFONE VALUES(NULL,'RES','77755785',20);
INSERT INTO TELEFONE VALUES(NULL,'COM','44522578',20);

/* RELATORIO GERAL DE TODOS OS CLIENTES */

SELECT * FROM CLIENTE;

/* RELATORIO GERAL DE TODOS OS CLIENTES (TELEFONE E ENDERECO) */

SELECT * FROM CLIENTE INNER JOIN
ENDERECO ON CLIENTE.IDCLIENTE=ENDERECO.ID_CLIENTE INNER JOIN
TELEFONE ON CLIENTE.IDCLIENTE=TELEFONE.ID_CLIENTE;


SELECT TELEFONE.NUMERO, TELEFONE.TIPO,
ENDERECO.ESTADO, CLIENTE.NOME, CLIENTE.SEXO, CLIENTE.IDCLIENTE
 FROM CLIENTE INNER JOIN
ENDERECO ON CLIENTE.IDCLIENTE=ENDERECO.ID_CLIENTE INNER JOIN
TELEFONE ON CLIENTE.IDCLIENTE=TELEFONE.ID_CLIENTE;

/* FAZENDO UPDATE*/

SELECT * FROM CLIENTE WHERE SEXO='F';

/* 12 13 18 19 */

SELECT * FROM CLIENTE WHERE 
IDCLIENTE IN (12,13,18,19);

UPDATE CLIENTE SET SEXO='F' WHERE
IDCLIENTE IN (12,13,18,19);

UPDATE CLIENTE SET SEXO='M' WHERE IDCLIENTE=16;
 
/* RELATORIO DE HOMENS */

SELECT TELEFONE.NUMERO, TELEFONE.TIPO,
ENDERECO.ESTADO, CLIENTE.NOME, CLIENTE.SEXO, CLIENTE.IDCLIENTE
 FROM CLIENTE INNER JOIN
ENDERECO ON CLIENTE.IDCLIENTE=ENDERECO.ID_CLIENTE INNER JOIN
TELEFONE ON CLIENTE.IDCLIENTE=TELEFONE.ID_CLIENTE WHERE CLIENTE.SEXO='M';



/* RELATORIO DE MULHERES */
SELECT TELEFONE.NUMERO, TELEFONE.TIPO,
ENDERECO.ESTADO, CLIENTE.NOME, CLIENTE.SEXO, CLIENTE.IDCLIENTE
 FROM CLIENTE INNER JOIN
ENDERECO ON CLIENTE.IDCLIENTE=ENDERECO.ID_CLIENTE INNER JOIN
TELEFONE ON CLIENTE.IDCLIENTE=TELEFONE.ID_CLIENTE WHERE CLIENTE.SEXO='F';


/* QUANTIDADE DE HOMENS E MULHERES */

SELECT COUNT(*), SEXO FROM CLIENTE GROUP BY SEXO;

/* IDS E EMAIL DAS MULHERES QUE MOREM NO CENTRO DO RIO DE JANEIRO E 
NAO TENHAM CELULAR */

SELECT CLIENTE.EMAIL,TELEFONE.NUMERO, CLIENTE.IDCLIENTE FROM CLIENTE
LEFT JOIN ENDERECO ON CLIENTE.IDCLIENTE=ENDERECO.ID_CLIENTE
LEFT JOIN TELEFONE ON CLIENTE.IDCLIENTE=TELEFONE.ID_CLIENTE
WHERE CLIENTE.SEXO='F'; 

SELECT CLIENTE.EMAIL,ENDERECO.BAIRRO, ENDERECO.CIDADE, CLIENTE.IDCLIENTE FROM CLIENTE
LEFT JOIN ENDERECO ON CLIENTE.IDCLIENTE=ENDERECO.ID_CLIENTE
LEFT JOIN TELEFONE ON CLIENTE.IDCLIENTE=TELEFONE.ID_CLIENTE
WHERE CLIENTE.SEXO='F'; 

/*EVOLUCAO ENDERECO*/
SELECT CLIENTE.EMAIL,ENDERECO.BAIRRO, ENDERECO.CIDADE, CLIENTE.IDCLIENTE FROM CLIENTE
LEFT JOIN ENDERECO ON CLIENTE.IDCLIENTE=ENDERECO.ID_CLIENTE
LEFT JOIN TELEFONE ON CLIENTE.IDCLIENTE=TELEFONE.ID_CLIENTE
WHERE CLIENTE.SEXO='F' AND (ENDERECO.BAIRRO='CENTRO' AND
ENDERECO.CIDADE='RJ' OR ENDERECO.CIDADE='RIO DE JANEIRO'); 
 
 /*EVOLUCAO TELEFONE*/
SELECT CLIENTE.EMAIL,ENDERECO.BAIRRO, TELEFONE.NUMERO, ENDERECO.CIDADE, CLIENTE.IDCLIENTE FROM CLIENTE
LEFT JOIN ENDERECO ON CLIENTE.IDCLIENTE=ENDERECO.ID_CLIENTE
LEFT JOIN TELEFONE ON CLIENTE.IDCLIENTE=TELEFONE.ID_CLIENTE
WHERE CLIENTE.SEXO='F' AND (ENDERECO.BAIRRO='CENTRO' AND
ENDERECO.CIDADE='RJ' OR ENDERECO.CIDADE='RIO DE JANEIRO'); 
 
 
SELECT CLIENTE.EMAIL,ENDERECO.BAIRRO, TELEFONE.NUMERO, ENDERECO.CIDADE, CLIENTE.IDCLIENTE FROM CLIENTE
LEFT JOIN ENDERECO ON CLIENTE.IDCLIENTE=ENDERECO.ID_CLIENTE
LEFT JOIN TELEFONE ON CLIENTE.IDCLIENTE=TELEFONE.ID_CLIENTE
WHERE CLIENTE.SEXO='F' AND (ENDERECO.BAIRRO='CENTRO' AND
ENDERECO.CIDADE='RJ' OR ENDERECO.CIDADE='RIO DE JANEIRO') AND
TELEFONE.NUMERO IS NULL; 


/* nome email telefone e celular dos clientes que mroam no RJ */

SELECT CLIENTE.EMAIL, CLIENTE.NOME, TELEFONE.NUMERO FROM CLIENTE LEFT JOIN
TELEFONE ON CLIENTE.IDCLIENTE=TELEFONE.ID_CLIENTE LEFT JOIN ENDERECO ON
CLIENTE.IDCLIENTE=ENDERECO.ID_CLIENTE WHERE ENDERECO.ESTADO='RJ' AND
TELEFONE.TIPO='CEL';


SELECT CLIENTE.EMAIL, CLIENTE.NOME, TELEFONE.NUMERO FROM CLIENTE INNER JOIN
TELEFONE ON CLIENTE.IDCLIENTE=TELEFONE.ID_CLIENTE INNER JOIN ENDERECO ON
CLIENTE.IDCLIENTE=ENDERECO.ID_CLIENTE WHERE ENDERECO.ESTADO='RJ' AND
TELEFONE.TIPO='CEL';

/* nome email telefone e celular dos clientes que mroam EM SP */

SELECT CLIENTE.EMAIL, CLIENTE.NOME, TELEFONE.NUMERO FROM CLIENTE LEFT JOIN
TELEFONE ON CLIENTE.IDCLIENTE=TELEFONE.ID_CLIENTE LEFT JOIN ENDERECO ON
CLIENTE.IDCLIENTE=ENDERECO.ID_CLIENTE WHERE ENDERECO.ESTADO='SP' AND
TELEFONE.TIPO='CEL' AND CLIENTE.SEXO='F';

SELECT CLIENTE.EMAIL, CLIENTE.NOME, TELEFONE.NUMERO FROM CLIENTE INNER JOIN
TELEFONE ON CLIENTE.IDCLIENTE=TELEFONE.ID_CLIENTE INNER JOIN ENDERECO ON
CLIENTE.IDCLIENTE=ENDERECO.ID_CLIENTE WHERE ENDERECO.ESTADO='SP' AND
TELEFONE.TIPO='CEL' AND CLIENTE.SEXO='F';
