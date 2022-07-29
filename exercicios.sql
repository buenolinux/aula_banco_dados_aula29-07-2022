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

/*
____________________________________________
*/

CREATE PROCEDURE spSomaSalarioProfessorExpecifico 

@aumentoDeSalario  decimal(10,2),
@codigoDoProfessor int
AS
UPDATE tab_professores SET salario = salario * @aumentoDeSalario WHERE id_professor = @codigoDoProfessor ;
SELECT * FROM tab_professores;

EXECUTE spSomaSalarioProfessorExpecifico 1.20, 1;

SELECT * FROM tab_professores;
/*
=================================================
*/
CREATE PROCEDURE spSomaSalaraio 
AS 
SELECT CONCAT ('R$ ',SUM(salario)) AS 'Total da soma dos salário dos professores' FROM tab_professores;

EXECUTE spSomaSalaraio;


select * FROM  tab_alunos;
select * FROM  tab_turmas;
/*
Cria um SP para contar quantos alunos existem em uma determinada turma
*/

CREATE PROCEDURE spContaAlunoTurma
@turma varchar(50)
AS
SELECT COUNT(id_aluno) FROM tab_turmas
WHERE nome = @turma;

EXECUTE spContaAlunoTurma  Redes;
SELECT * FROM tab_alunos;

-- nome email fone foto
CREATE PROCEDURE spInserirAlunos
@nome VARCHAR(50), @email VARCHAR(50), @fone VARCHAR(50), @foto VARCHAR(50)
AS

INSERT INTO tab_alunos (nome, email, fone, foto)
VALUES(@nome, @email, @fone, @foto);

SELECT * FROM  tab_alunos;
EXECUTE spInserirAlunos 'Pedro', 'pedro@email.com', '(11) 91111-1110', 'pedro.jpg';

SELECT * FROM  tab_alunos;
