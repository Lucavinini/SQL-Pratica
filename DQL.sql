-- =======================================================
-- ARQUIVO DE CONSULTAS (DQL)
-- Banco de Dados: Faculdade_DB
-- =======================================================

-- Sempre garanta que o banco de dados correto está selecionado
USE Faculdade_DB;


-- =======================================================
-- 1. CONSULTAS BÁSICAS (SELECT, FROM)
-- =======================================================

-- Consulta para visualizar TODAS as colunas e TODAS as linhas da tabela Aluno
-- O '*' é um coringa para "todas as colunas".
SELECT * FROM Aluno;

-- Consulta para visualizar colunas específicas da tabela Aluno
-- Útil para focar em informações relevantes e criar relatórios mais limpos.
SELECT nome, curso, periodo FROM Aluno;


-- =======================================================
-- 2. FILTRAGEM DE DADOS (WHERE)
-- =======================================================

-- A cláusula WHERE é usada para extrair apenas os registros que cumprem uma condição.

-- Exemplo com operador lógico 'AND' (todas as condições devem ser verdadeiras)
SELECT * FROM Aluno 
WHERE curso = 'Sistemas Digitais' AND periodo = 4;

-- Exemplo com 'OR' e parênteses para garantir a ordem da lógica
-- Retorna alunos que são de 'CC' OU 'Redes' E que estão a partir do 3º período
SELECT * FROM Aluno 
WHERE (curso = 'CC' OR curso = 'Redes') AND periodo >= 3;

-- Exemplo com busca por padrão de texto usando 'LIKE'
-- Retorna todos os alunos cujo nome começa com 'Carlos'
SELECT * FROM Aluno 
WHERE nome LIKE 'Carlos%';


-- =======================================================
-- 3. ORDENAÇÃO DE RESULTADOS (ORDER BY)
-- =======================================================

-- A cláusula ORDER BY é usada para classificar o resultado da consulta.
-- O padrão é a ordem ascendente (ASC).

-- Retorna o id e o cpf de todos os alunos, ordenados pelo id (do menor para o maior)
SELECT id, cpf FROM Aluno ORDER BY id ASC;

-- Retorna o nome e o período de todos os alunos, ordenados pelo nome em ordem alfabética inversa (Z-A)
SELECT nome, periodo FROM Aluno ORDER BY nome DESC;


-- =======================================================
-- 4. JUNÇÃO DE TABELAS (INNER JOIN)
-- =======================================================

-- INNER JOIN é usado para combinar linhas de duas ou mais tabelas, com base em uma coluna relacionada entre elas.
-- O uso de aliases (apelidos como 'a' para Aluno e 't' para Turma) é uma excelente prática.

-- Retorna o nome do aluno e a data de entrada da sua respectiva turma
SELECT
    a.nome AS nome_aluno, -- Usar 'AS' para renomear colunas no resultado é opcional, mas ajuda na clareza
    t.entrada AS data_da_turma
FROM
    Aluno AS a
INNER JOIN
    Turma AS t ON a.id_turma = t.id;
