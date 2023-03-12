USE COMERCIO;
/* STORED PROCEDURES */

SELECT 'MAFRA';

DELIMITER $

CREATE PROCEDURE NOME_EMPRESA() 
BEGIN

	SELECT 'UNIVERSIDADE DOS DADOS' AS EMPRESA;
	
END$



/*CHAMANDO PROCEDURE*/

DELIMITER ;

CALL NOME_EMPRESA();

DELIMITER $

/* PROCEDURE COM PARAMETRO */

CREATE PROCEDURE CONTA()
BEGIN

 SELECT 10+10;

END$

DROP PROCEDURE CONTA$


CREATE PROCEDURE CONTA(x int, y int)
BEGIN

 SELECT x+y AS CONTA;

END$

DELIMITER ;

CALL CONTA(10,2000);


/*CRIAR PROCEDURE COM QUERY */

CREATE TABLE CURSOS(
	IDCURSO INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30) NOT NULL,
	HORAS INT(3) NOT NULL,
	VALOR FLOAT(10,2) NOT NULL
);


DELIMITER #

CREATE PROCEDURE CAD_CURSO(PNOME VARCHAR(30)
,PHORAS INT(3),PPRECO FLOAT(10,2))
BEGIN
	INSERT INTO CURSOS VALUES(NULL,PNOME,PHORAS,PPRECO);


END#

DELIMITER ;

CALL CAD_CURSO('BI SQL',35,3000.00);

CALL CAD_CURSO('SQL',35,300.00);

CALL CAD_CURSO('TABLEAU',35,120.00);

SELECT * FROM CURSOS;

/*EXERCICIO CURSO PROCEDURE VIEW */

DELIMITER #

CREATE PROCEDURE VIEW_COURSE(PNOME VARCHAR(30))
BEGIN

	SELECT * FROM CURSOS WHERE NOME=PNOME;

END#

DELIMITER ;

CALL VIEW_COURSE('TABLEAU');

