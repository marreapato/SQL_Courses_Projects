-- cursores

CREATE DATABASE CURSORES;
USE CURSORES;

CREATE TABLE VENDEDORES(
	IDVENDEDOR INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30),
	JAN INT,
	FEV INT,
	MAR INT

);

INSERT INTO VENDEDORES VALUES(NULL,'MAFRA',32432,243243,5453545);
INSERT INTO VENDEDORES VALUES(NULL,'CLARA',32232,243243,5453545);
INSERT INTO VENDEDORES VALUES(NULL,'JOAO',32332,243243,5453545);
INSERT INTO VENDEDORES VALUES(NULL,'LILIAN',32432,243243,5453545);
INSERT INTO VENDEDORES VALUES(NULL,'ANTONIO',32432,243243,5453545);
INSERT INTO VENDEDORES VALUES(NULL,'GLORIA',32555,245243,5553545);

SELECT * FROM VENDEDORES;

SELECT NOME, (JAN+FEV+MAR) TOTAL, (JAN+FEV+MAR)/3 MEDIA FROM VENDEDORES;

CREATE TABLE VEND_TOTAL(
	NOME VARCHAR(50),
	JAN INT,
	FEV INT,
	MAR INT,
	TOTAL INT,
	MEDIA INT

);
