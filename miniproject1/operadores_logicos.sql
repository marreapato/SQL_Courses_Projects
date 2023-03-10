/* operadores logicos */
 
 SELECT NOME, SEXO, ENDERECO FROM CLIENTE WHERE
 SEXO = 'M' OR ENDERECO LIKE '%RJ';
 
 SELECT NOME, SEXO, ENDERECO FROM CLIENTE WHERE
 SEXO = 'F' OR ENDERECO LIKE '%ESTACIO';
 
 /* AND - E */

SELECT NOME, SEXO, ENDERECO FROM CLIENTE WHERE
SEXO = 'M' AND ENDERECO LIKE '%RJ';

SELECT NOME, SEXO, ENDERECO FROM CLIENTE WHERE
SEXO = 'F' AND ENDERECO LIKE '%ESTACIO';
 
 /* COUNT(*), GROUP BY, PERFORMANCE COM OPERADORES */
 
 SELECT COUNT(*) FROM CLIENTE;
 
 SELECT COUNT(*) AS 'QUANTIDADE DE REGISTROS' FROM CLIENTE; 
 
 /* OPERADOR GROUP BY*/
 
 
 SELECT SEXO, COUNT(*) FROM CLIENTE GROUP BY SEXO;
 
