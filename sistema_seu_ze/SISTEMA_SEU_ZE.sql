-- SEU ZE

SHOW DATABASES;

DROP DATABASE PROJETO;

create database projeto;

USE PROJETO;

-- SISTEMA DO SEU ZE

CREATE TABLE CLIENTE(

	ID_CLIENTE VARCHAR(11) NOT NULL UNIQUE,
	NOME VARCHAR(30) NOT NULL,
	SEXO ENUM('M','F') NOT NULL,
	EMAIL VARCHAR(30) NOT NULL,
	TELEFONE VARCHAR(11)

);

CREATE TABLE CARRO(
	
	IDCLIENTE VARCHAR(11) NOT NULL,
	MARCA VARCHAR(30) NOT NULL

);


CREATE TABLE CORES(
	
	IDCLIENTE VARCHAR(11) NOT NULL,
	CORES VARCHAR(30) NOT NULL

);

ALTER TABLE CLIENTE ADD CONSTRAINT
CPF_CLIENTE PRIMARY KEY(ID_CLIENTE);

ALTER TABLE CARRO ADD CONSTRAINT
CPF_CLIENTE_CARRO FOREIGN KEY(IDCLIENTE)
REFERENCES CLIENTE(ID_CLIENTE);

ALTER TABLE CORES ADD CONSTRAINT
CPF_CLIENTE_CORES FOREIGN KEY(IDCLIENTE)
REFERENCES CLIENTE(ID_CLIENTE);

-- TABELAS
SHOW CREATE TABLE CLIENTE;
SHOW CREATE TABLE CORES;
SHOW CREATE TABLE CARRO;

-- INSERCAO REGISTROS

INSERT INTO CLIENTE(ID_CLIENTE,NOME,SEXO,EMAIL,TELEFONE)VALUES('33333333333','JOAO','M','JOAO@GMAIL.COM',NULL);

INSERT INTO CARRO(IDCLIENTE,MARCA)VALUES('33333333333','RENAULT');

INSERT INTO CORES(IDCLIENTE,CORES)VALUES('33333333333','VERDE');


INSERT INTO CLIENTE(ID_CLIENTE,NOME,SEXO,EMAIL,TELEFONE)VALUES('33444333333','RAQUEL','F','RAQUEL@GMAIL.COM','71998438832');

INSERT INTO CARRO(IDCLIENTE,MARCA)VALUES('33444333333','SANDERO');

INSERT INTO CORES(IDCLIENTE,CORES)VALUES('33444333333','VERDE');
INSERT INTO CORES(IDCLIENTE,CORES)VALUES('33444333333','AZUL');
INSERT INTO CORES(IDCLIENTE,CORES)VALUES('33444333333','ROXO');



INSERT INTO CLIENTE(ID_CLIENTE,NOME,SEXO,EMAIL,TELEFONE)VALUES('22444333333','MARCIO','M','MARCIO@GMAIL.COM','75998438832');

INSERT INTO CARRO(IDCLIENTE,MARCA)VALUES('22444333333','UNO');

INSERT INTO CORES(IDCLIENTE,CORES)VALUES('22444333333','ROSA');


INSERT INTO CLIENTE(ID_CLIENTE,NOME,SEXO,EMAIL,TELEFONE)VALUES('55555555333','MARCIO','M','MARCIO2@GMAIL.COM',NULL);

INSERT INTO CARRO(IDCLIENTE,MARCA)VALUES('55555555333','COROLLA');

INSERT INTO CORES(IDCLIENTE,CORES)VALUES('55555555333','PRATA');



INSERT INTO CLIENTE(ID_CLIENTE,NOME,SEXO,EMAIL,TELEFONE)VALUES('22444344333','LUANA','F','LUANA@GMAIL.COM',NULL);

INSERT INTO CARRO(IDCLIENTE,MARCA)VALUES('22444344333','FIAT');

INSERT INTO CORES(IDCLIENTE,CORES)VALUES('22444344333','AMARELO');
INSERT INTO CORES(IDCLIENTE,CORES)VALUES('22444344333','BRANCO');


SELECT * FROM CLIENTE C LEFT JOIN CARRO CA ON C.ID_CLIENTE=CA.IDCLIENTE;


SELECT C.MARCA, C.IDCLIENTE, CO.CORES FROM CARRO C LEFT JOIN CORES CO ON C.IDCLIENTE=CO.IDCLIENTE;

SELECT C.ID_CLIENTE, C.NOME, C.EMAIL, C.SEXO, C.TELEFONE, CA.MARCA, CO.CORES FROM CLIENTE C
LEFT JOIN CARRO CA ON C.ID_CLIENTE=CA.IDCLIENTE
LEFT JOIN CORES CO ON C.ID_CLIENTE=CO.IDCLIENTE;

CREATE VIEW INFO_CLIENTES AS SELECT C.ID_CLIENTE, C.NOME, C.EMAIL, C.SEXO, C.TELEFONE, CA.MARCA, CO.CORES FROM CLIENTE C
LEFT JOIN CARRO CA ON C.ID_CLIENTE=CA.IDCLIENTE
LEFT JOIN CORES CO ON C.ID_CLIENTE=CO.IDCLIENTE;

SELECT MARCA, SEXO, NOME, EMAIL, CORES FROM INFO_CLIENTES WHERE SEXO='F';

SELECT COUNT(CORES),SEXO FROM INFO_CLIENTES GROUP BY SEXO;

SELECT COUNT(CORES),CORES FROM INFO_CLIENTES GROUP BY CORES;

SELECT COUNT(CORES),CORES FROM INFO_CLIENTES GROUP BY CORES;
