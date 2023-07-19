--drop database aula_sql02
--go

drop database aula_sql
go

drop database banco1
go

/* organizar fisicamente e logicamente um BD */



-- banco para mkt e rh
-- 2 criar arquivo geral
-- deixar mdf apenas com dic de dados
-- criar 2 grupos de arquivos primary - mdf

CREATE TABLE TB_EMPRESA(

	id INT,
	nome VARCHAR(50)

)
GO


