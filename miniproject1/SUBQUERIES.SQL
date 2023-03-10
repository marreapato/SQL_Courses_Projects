 USE COMERCIO;
 
 SELECT * FROM VENDEDORES;
 
 /* A 31 - VENDEDOR QUE VENDEU MENOS E MARCO E SEU NOME */
 
SELECT MIN(MARCO) FROM VENDEDORES;

SELECT NOME,MARCO FROM VENDEDORES
WHERE MARCO=(SELECT MIN(MARCO) FROM VENDEDORES
);

SELECT MAX(MARCO) FROM VENDEDORES;

SELECT NOME,MARCO FROM VENDEDORES
WHERE MARCO=(SELECT MAX(MARCO) FROM VENDEDORES
);


SELECT * FROM VENDEDORES WHERE 
MARCO>(SELECT AVG(FEVEREIRO) FROM VENDEDORES);


SELECT * FROM VENDEDORES WHERE 
FEVEREIRO>(SELECT AVG(FEVEREIRO) FROM VENDEDORES)
OR MARCO>(SELECT AVG(FEVEREIRO) FROM VENDEDORES)
OR JANEIRO>(SELECT AVG(FEVEREIRO) FROM VENDEDORES);
 
 
/* soma por linha */

SELECT * FROM VENDEDORES;

SELECT NOME, JANEIRO, FEVEREIRO, MARCO, 
(JANEIRO+FEVEREIRO+MARCO) AS "TOTAL",
TRUNCATE((JANEIRO+FEVEREIRO+MARCO)/3,2) AS "MEDIA"
FROM VENDEDORES;


SELECT NOME, JANEIRO, FEVEREIRO, MARCO, 
(JANEIRO+FEVEREIRO+MARCO) AS "TOTAL",
TRUNCATE((JANEIRO+FEVEREIRO+MARCO)/3,2) AS "MEDIA",
(JANEIRO+FEVEREIRO+MARCO)*.25 AS "DESCONTO"
FROM VENDEDORES;
 
