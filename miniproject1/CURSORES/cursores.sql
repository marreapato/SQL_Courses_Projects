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

DELIMITER $

CREATE PROCEDURE INSEREDADOS()
BEGIN

	DECLARE FIM INT DEFAULT 0;
	DECLARE VAR1, VAR2, VAR3, VTOTAL, VMEDIA INT;
	DECLARE VNOME VARCHAR(50);
	
	DECLARE REG CURSOR FOR(
		SELECT NOME, JAN, FEV, MAR FROM VENDEDORES
	);
	
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET FIM = 1;
	
	OPEN REG;
	
	REPEAT
	
		FETCH REG INTO VNOME, VAR1, VAR2, VAR3;
		IF NOT FIM THEN
			SET VTOTAL=VAR1+VAR2+VAR3;
			SET VMEDIA=VTOTAL/3;
			
			INSERT INTO VEND_TOTAL VALUES(VNOME,VAR1,VAR2,VAR3,VTOTAL,VMEDIA);
			
		END IF;



	UNTIL FIM END REPEAT;
	
	CLOSE REG;
	
END
$

DELIMITER ;

SELECT * FROM VENDEDORES;

SELECT * FROM VEND_TOTAL;

CALL INSEREDADOS();

SELECT * FROM VEND_TOTAL;
