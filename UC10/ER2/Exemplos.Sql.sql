USE hr;

--select simples
SELECT * FROM locations;
SELECT * FROM departments;
SELECT * FROM jobs;
SELECT * FROM countries;

--selecionando colunas
SELECT DEPARTMENT_ID, DEPARTMENT_NAME FROM departments;
SELECT * FROM EMPLOYEES;

--PEGAR APENAS O FIRST_NAME, EMAIL, JOB_ID
SELECT FIRST_NAME, EMAIL, JOB_ID FROM EMPLOYEES;

--APELIDANDO CAMPOS
SELECT FIRST_NAME AS "NOME", EMAIL AS "E_MAIL", JOB_ID AS "CODIGO DO CAMPO" FROM EMPLOYEES;
SELECT d.DEPARTMENT_ID AS "ID DO DEPTO", d.DEPARTMENT_NAME AS "NOME DO DEPTO", d.LOCATION_ID, d.MANAGER_ID FROM DEPARTMENTS d;

--CRIAR UM NOVO BANCO DE DADOS
CREATE DATABASE BET7FST4;

USE BET7FST4;

-- CRIA��O DE TABELAS
CREATE TABLE cadastro
(
nome VARCHAR(30),
sobrenome VARCHAR(30),
salario MONEY,
endereco VARCHAR(30),
dt_cadastro DATE
);

--insert sem informar quais sao os campos (precisa passar os valores na ordem que eles foram criados no banco)
INSERT INTO cadastro VALUES ('MARCELO','DINIZ',1000,'PIRACEMA 100',SYSDATETIME());

--insert informando os campos (precisa passaros valores de acordo com a ordem que os campos foram informados)
INSERT INTO cadastro (nome, sobrenome, salario, endereco, dt_cadastro) VALUES ('FERNANDO','ROMERO',200,'CORREIA 100',SYSDATETIME());

INSERT INTO cadastro (salario, nome, sobrenome, endereco, dt_cadastro) VALUES (2500,'CARLOS','MARTINS','PIAUI 100',SYSDATETIME());

INSERT INTO cadastro VALUES ('Miguel','Carmin',4000,'Piaui 100',SYSDATETIME());
INSERT INTO cadastro VALUES ('Camila','Pacheco',8000,'Sao Jorge 84',SYSDATETIME());
INSERT INTO cadastro VALUES ('Marina','Augusto',1400,'Nova Tatuape 100',SYSDATETIME());
INSERT INTO cadastro VALUES ('Roberto','Eduardo',800,'Jurubatuba 505',SYSDATETIME());
INSERT INTO cadastro VALUES ('Eduardo','Gomes',1000,'estrela 14',SYSDATETIME());
INSERT INTO cadastro VALUES ('Mario','Temer',3500,'Moreira 10',SYSDATETIME());
INSERT INTO cadastro VALUES ('Marcelo','Juracy',7350,'Santa Elvira',SYSDATETIME());

SELECT * FROM cadastro;

--retornar todos os registros da tabela cadstro, referentes aos funcion�rios Marinae Eduardo
SELECT NOME, SOBRENOME FROM cadastro WHERE nome IN ('Marina','Eduardo');
SELECT * FROM cadastro WHERE nome = 'Marina' OR nome ='Eduardo';

--retornar todos os registros da tabela com um calculo de quantos funcionarios ganham em um ano de trabalho. Criar o apelido "anual"
SELECT *, salario * 12 AS "ANUAL" FROM cadastro;

--selecionar as colunas nome e sobrenome da tabela cadastro e simular um aumento no sal�rio de 10%, colocando um apelido na coluna com o nome de "AUMENTO".
SELECT nome, sobrenome, salario * 1.1 AS "Aumento" FROM cadastro;
-- ou ex: SELECT nome, sobrenome, salario + ((salario * 10)/100) AS "Aumento" FROM cadastro;

--selecionar todos os funcionarios que ganham entre 4000 e 5000.
SELECT * FROM cadastro WHERE salario >=4000 and salario <=5000;
SELECT * FROM cadastro WHERE salario between 4000 and 5000;

--selecionar todos os funcionarios que possuem o salrio maior e igual a 4000
SELECT * FROM cadastro WHERE salario >=4000;

--selecionar todos o funcionarios que possuem a letra "a" no nome
SELECT * FROM cadastro WHERE nome like '%a%';

--selecionar todos o funcionarios que comecem com a letra "m" 
SELECT * FROM cadastro WHERE nome like 'm%';

--alterar o salario do funcionario marcelo para 2000.
UPDATE cadastro SET salario = 2000 WHERE nome = 'MARCELO' and sobrenome = 'DINIZ';

--voltamos para o banco HR
SELECT * FROM DEPARTMENTS;

SELECT * FROM EMPLOYEES WHERE DEPARTMENT_ID=60;
UPDATE employees SET salary = 10000 WHERE department_id = 60;

SELECT * FROM EMPLOYEES WHERE DEPARTMENT_ID=30;
UPDATE employees SET salary = salary * 1.1 WHERE department_id = 30;

-- voltando para BET7FST4
-- delete , deleta o registro da tabela preservando a tabela
select * from cadastro
DELETE FROM cadastro WHERE nome = 'CARLOS';
DELETE FROM cadastro;

-- drop, deleta tudo juntamente com a tabela
DROP TABLE cadastro;
DROP database BET7FST4;