-- Etapa 1 (Inicialização) 
-- Passo 1: Seleciona o banco de dados que vou usar

USE Faculdade_DB;

-- Etapa 2 (Inserindo dados nas Entidades Turma e Aluno)
-- Passo 1: Deve-se inserir primeiro uma turma para depois inserir um aluno. Pois
-- Aluno tem uma chave estrangeira de um registro de turma, a menos que a chave aceite valores NULL.

INSERT INTO Turma (entrada) VALUES ('2025-08-1');

-- O id é autoincrementado, por isso não preciso inserir ele, o número dos registros começará de (1-N)

INSERT INTO Aluno (cpf, nome, curso, periodo, id_turma)
VALUES ('111.778.321-14', 'Lucas Vinícius', 'CC', 4, 1);




