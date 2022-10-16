--Criamos o login do aluno
CREATE LOGIN aluno
WITH PASSWORD = '1234'

--Criamos um perfil chamado Aluno e atribuimos ao aluno.
CREATE USER aluno FOR LOGIN aluno;
GRANT SELECT TO aluno