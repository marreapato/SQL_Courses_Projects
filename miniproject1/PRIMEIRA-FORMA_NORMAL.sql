--selecting NULL REGISTERS
SHOW DATABASES;

USE PROJETO;

SHOW TABLES;

SELECT * FROM CLIENTES;

/* deletando registros */
 UPDATE CLIENTE SET TELEFONE = '2293110 - 989345678' WHERE NOME = 'JOAO';
 
 SELECT SEXO, COUNT(*) AS QTD FROM CLIENTE GROUP BY SEXO;
 
 /* PRIMEIRA FORMA NORMAL */
 
 /*
 
 1 - TODO CAMPO VETORIZADO SE TORNA OUTRA TABELA
 
 (EA, FIESTA, UNO) -> ELEMENTOS DA MSM FAMILIA
 
 TODO CAMPO MULTIVALORADO SE TORNARA OUTRA TABELA
 QUANDO O CAMPO FOR DIVISIVEL (VETOR COM ELEMENTOS DE FAMILIAS DIFERENTES)
 
 3- TODA TABELA NECESSITA DE PELO MENOS UM CAMPO 
 QUE IDENTIFIQUE TODO O REGISTRO COMO SENDO UNICO
 (CHAVE PRIMARIA, OU PRIMARY KEY) - CPF POR EXEMPLO

 
 
 */