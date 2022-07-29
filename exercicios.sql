USE escola;

/*
Criar uma SP para mostrar fone e email de todos os professores
*/

CREATE PROCEDURE spMostraFoneEmailProfessores
AS
SELECT fone, email FROM tab_professores;

EXECUTE spMostraFoneEmailProfessores;

/*
Criar uma SP para aumentar o salário de todos os professores com qualquer porcentagem
*/
CREATE PROCEDURE spSomaSalario 

@teste  decimal(10,2)
AS
UPDATE tab_professores SET salario = salario * @teste;
SELECT * FROM tab_professores;

EXECUTE spSomaSalario 1.10;

SELECT * FROM tab_professores;
