USE escola;

/*
Criar uma SP para mostrar fone e email de todos os professores
*/

CREATE PROCEDURE spMostraFoneEmailProfessores
AS
SELECT fone, email FROM tab_professores;

EXECUTE spMostraFoneEmailProfessores;
